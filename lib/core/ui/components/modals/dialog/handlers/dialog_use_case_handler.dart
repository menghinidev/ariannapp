import 'dart:async';

import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/handlers/handler.dart';
import 'package:ariannapp/core/ui/components/modals/dialog/dialog_service.dart';

class ShowDialogErrorHandler<R, I> extends UseCaseErrorHandler<R, I> {
  ShowDialogErrorHandler(this.dialogService);
  final DialogService dialogService;

  @override
  Future<void> handle(List<ApplicationError> errors, I input) async {
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
