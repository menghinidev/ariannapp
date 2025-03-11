import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/handlers/handler.dart';
import 'package:ariannapp/core/ui/components/modals/snackbar/snackbar_service.dart';
import 'package:flutter/material.dart';

class ShowSnackbarErrorHandler<R, I> extends UseCaseErrorHandler<R, I> with SnackbarBuilder {
  ShowSnackbarErrorHandler({
    required this.contextProvider,
    this.messageProvider,
  });

  final String Function(ApplicationError error, I input)? messageProvider;
  final BuildContext Function(I input) contextProvider;

  @override
  Future<void> handle(List<ApplicationError> errors, I input) {
    try {
      final context = contextProvider(input);
      final scaffold = ScaffoldMessenger.of(context);
      const defaultErrorMessage = 'Errore sconosciuto';
      final error = errors.firstOrNull ?? ApplicationError.generic(message: defaultErrorMessage);
      final message = messageProvider?.call(error, input) ?? error.mapOrNull(generic: (error) => error.message);
      final _ = scaffold.showSnackBar(buildErrorSnackbar(context, message: message ?? defaultErrorMessage));
      return Future.value();
    } catch (e) {
      return Future.value();
    }
  }
}
