import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
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
