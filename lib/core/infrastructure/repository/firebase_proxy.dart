import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/repository/invoker.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:dio/dio.dart' as dio;

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
