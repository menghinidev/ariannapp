import 'dart:async';

import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';

// ignore: one_member_abstracts
abstract class UseCaseSuccessHandler<R, I> {
  Future<void> handle(R? payload, I input);
}

abstract class UseCaseErrorHandler {
  Future<bool> isError(Response<dynamic, ApplicationError> response) {
    final isError = response.isError;
    if (!isError) return Future.value(isError);
    final errors = response.errors;
    if (errors == null || errors.isEmpty) return Future.value(isError);
    final error = errors.first;
    return Future.value(error.maybeMap(orElse: () => isError, unauthorized: (value) => false));
  }

  Future<void> handle(List<ApplicationError> errors);
}
