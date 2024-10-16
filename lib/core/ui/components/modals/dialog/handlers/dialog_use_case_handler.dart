import 'dart:async';

import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/error/error_code.dart';
import 'package:ariannapp/core/infrastructure/usecase/handlers/handler.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:ariannapp/core/ui/components/modals/dialog/dialog_service.dart';

class CustomSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> {
  CustomSuccessHandler(this.onSuccess);
  final FutureOr<void> Function(R? payload, I input) onSuccess;

  @override
  Future<void> handle(R? payload, I input) async => await onSuccess(payload, input);
}

class CustomErrorHandler extends UseCaseErrorHandler {
  CustomErrorHandler({required this.onError, this.errorCode});
  final Future<void> Function(List<ApplicationError> errors) onError;
  final ErrorCode? errorCode;

  @override
  Future<bool> isError(Response<dynamic, ApplicationError> response) {
    final errors = response.errors ?? <ApplicationError>[];
    if (errors.isEmpty) return super.isError(response);
    final hasMatch = errors.getWhere((element) => element.errorCode == errorCode) != null;
    return Future.value(hasMatch);
  }

  @override
  Future<void> handle(List<ApplicationError> errors) => onError(errors);
}

class ShowDialogErrorHandler extends UseCaseErrorHandler {
  ShowDialogErrorHandler(this.dialogService);
  final DialogService dialogService;

  @override
  Future<void> handle(List<ApplicationError> errors) async {
    return dialogService.showErrorDialog(error: errors.first);
  }
}

class ShowDialogSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> {
  ShowDialogSuccessHandler(
    this.dialogService, {
    required this.textMapper,
  });
  final DialogService dialogService;
  final String Function(R? payload, I input) textMapper;

  @override
  Future<void> handle(R? payload, I input) async {
    return dialogService.showSuccessDialog(message: textMapper(payload, input));
  }
}
