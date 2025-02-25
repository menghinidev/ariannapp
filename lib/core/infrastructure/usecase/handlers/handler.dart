import 'dart:async';

import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/error/error_code.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';

abstract class UseCaseSuccessHandler<R, I> {
  Future<void> handle(R? payload, I input);
}

abstract class UseCaseErrorHandler<R, I> {
  Future<bool> isError(Response<R, ApplicationError> response) {
    final isError = response.isError;
    if (!isError) return Future.value(isError);
    final errors = response.errors;
    if (errors == null || errors.isEmpty) return Future.value(isError);
    final error = errors.first;
    return Future.value(error.maybeMap(orElse: () => isError, unauthorized: (value) => false));
  }

  Future<void> handle(List<ApplicationError> errors, I input);
}

class CustomSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> {
  CustomSuccessHandler(this.onSuccess);
  final FutureOr<void> Function(R? payload, I input) onSuccess;

  @override
  Future<void> handle(R? payload, I input) async => await onSuccess(payload, input);
}

class CustomErrorHandler<R, I> extends UseCaseErrorHandler<R, I> {
  CustomErrorHandler({required this.onError, this.errorCode});
  final Future<void> Function(List<ApplicationError> errors) onError;
  final ErrorCode? errorCode;

  @override
  Future<bool> isError(Response<R, ApplicationError> response) {
    final errors = response.errors ?? <ApplicationError>[];
    if (errors.isEmpty) return super.isError(response);
    final hasMatch = errors.getWhere((element) => element.errorCode == errorCode) != null;
    return Future.value(hasMatch);
  }

  @override
  Future<void> handle(List<ApplicationError> errors, I input) => onError(errors);
}
