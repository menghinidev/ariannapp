import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/local_storage/local_storage_service.dart';
import 'package:ariannapp/core/infrastructure/utils/logger/custom_logger.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart' as dio;

mixin RepositorySafeInvoker {
  Future<Response<T, ApplicationError>> safeInvoke<T, P>({
    required Future<P> Function() request,
    required T Function(P payload) payloadMapper,
    ApplicationError? Function(dio.DioException exception)? errorMapper,
  }) async {
    final logger = ApplicationLogger.instance;
    try {
      final response = await request();
      return Responses.success(payloadMapper(response));
    } on FirebaseException catch (e) {
      logger.logApplicationError('Firestore exception', error: e.message, stacktrace: e.stackTrace);
      return Responses.failure([ApplicationError.generic()]);
    } on dio.DioException catch (e) {
      final error = errorMapper?.call(e);
      if (error != null) {
        logger.logApplicationError('Dio exception', error: e.message, stacktrace: e.stackTrace);
      }
      return Responses.failure([error ?? ApplicationError.generic()]);
    } catch (e, stacktrace) {
      logger.logApplicationError('Dart exception', error: e, stacktrace: stacktrace);
      return Responses.failure([ApplicationError.generic()]);
    }
  }
}

class FirebaseProxyWrapper with RepositorySafeInvoker {
  FirebaseProxyWrapper({
    required this.localStorageService,
    required this.httpClient,
    required this.fetchToken,
  });

  final ILocalStorageService localStorageService;
  final dio.Dio httpClient;
  final Future<String> Function() fetchToken;

  Future<Response<T, ApplicationError>> firebaseProxy<T, P, F>({
    required Future<P> Function(String token) request,
    required T Function(P payload) payloadMapper,
    required Future<F> Function() firebaseProxyRequest,
    required T Function(F payload) firebasePayloadMapper,
    required Future<void> Function(T? payload) firebaseProxyUpdate,
  }) async {
    final firebaseCacheAttempt = await safeInvoke(request: firebaseProxyRequest, payloadMapper: firebasePayloadMapper);
    if (!firebaseCacheAttempt.isError) return firebaseCacheAttempt;
    final response = await authanticateRequest(request: request, payloadMapper: payloadMapper);
    if (!response.isError) {
      await safeInvoke(
        request: () => firebaseProxyUpdate(response.payload),
        payloadMapper: (_) {},
      );
    }
    return response;
  }

  Future<Response<T, ApplicationError>> authanticateRequest<T, P>({
    required Future<P> Function(String token) request,
    required T Function(P payload) payloadMapper,
  }) async {
    var token = await localStorageService.accessToken;
    if (token == null) {
      token = await fetchToken();
      await localStorageService.saveAccessToken(token);
    }
    final response = await safeInvoke(
      request: () => request(token!),
      payloadMapper: payloadMapper,
      errorMapper: (error) {
        final statusCode = error.response?.statusCode;
        if (statusCode == 401) return ApplicationError.unauthorized();
        return null;
      },
    );
    if (!response.isError) return response;
    if (response.hasError(ApplicationError.unauthorized())) {
      token = await fetchToken();
      await localStorageService.saveAccessToken(token);
      return safeInvoke(
        request: () => request(token!),
        payloadMapper: payloadMapper,
      );
    } else {
      return response;
    }
  }
}
