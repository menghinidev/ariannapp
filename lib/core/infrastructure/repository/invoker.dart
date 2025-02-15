import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/logger/custom_logger.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

mixin RepositorySafeInvoker {
  Future<Response<T, ApplicationError>> safeInvoke<T, P>({
    required Future<P> Function() request,
    required T Function(P payload) payloadMapper,
  }) async {
    try {
      final response = await request();
      return Responses.success(payloadMapper(response));
    } on FirebaseException catch (e) {
      ApplicationLogger.instance.logApplicationError('Firestore exception', error: e.message, stacktrace: e.stackTrace);
      return Responses.failure([ApplicationError.generic()]);
    } catch (e, stacktrace) {
      ApplicationLogger.instance.logApplicationError('Dart exception', error: e, stacktrace: stacktrace);
      return Responses.failure([ApplicationError.generic()]);
    }
  }
}
