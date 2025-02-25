import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/validator/use_case_validator.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:ariannapp/core/ui/components/modals/dialog/dialog_service.dart';

class ConfirmOperationValidator<I> extends UseCaseValidator<I> {
  ConfirmOperationValidator(
    this.dialogService, {
    required this.title,
    this.message,
  });

  final DialogService dialogService;
  final String title;
  final String Function(I input)? message;

  static const defaultMessage = 'Operazione annullata';

  @override
  Future<EmptyResponse> validate(I input) async {
    final response = await dialogService.showConfirmDialog(
      message: message?.call(input) ?? defaultMessage,
    );
    if (response ?? false) return Responses.failure<void, ApplicationError>([ApplicationError.operationAborted()]);
    return Responses.success<void, ApplicationError>(null);
  }
}
