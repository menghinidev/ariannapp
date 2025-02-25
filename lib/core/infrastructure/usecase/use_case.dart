import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/handlers/handler.dart';
import 'package:ariannapp/core/infrastructure/usecase/requirements/requirement.dart';
import 'package:ariannapp/core/infrastructure/usecase/validator/use_case_validator.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';

abstract class UseCase<R, I> {
  UseCase({
    this.requirements,
    this.errorHandlers,
    this.successHandlers,
    this.validators,
  });
  final List<UseCaseRequirement>? requirements;
  final List<UseCaseValidator<I>>? validators;
  final List<UseCaseErrorHandler<R, I>>? errorHandlers;
  final List<UseCaseSuccessHandler<R, I>>? successHandlers;

  Future<Response<R, ApplicationError>> call(I input);

  Future<EmptyResponse> checkRequirements() async {
    if (requirements == null) {
      return Responses.success<void, ApplicationError>(null);
    }
    for (final req in requirements!) {
      final response = await req.check();
      if (response.isError) return response;
    }
    return Responses.success(null);
  }

  Future<EmptyResponse> validateInput(I input) async {
    if (validators == null) {
      return Responses.success<void, ApplicationError>(null);
    }
    for (final validator in validators!) {
      final response = await validator.validate(input);
      if (response.isError) return response;
    }
    return Responses.success(null);
  }

  Future<void> applyErrorHandlers(
    Response<R, ApplicationError> response,
    I input, {
    bool ignoreAbortedOperations = true,
  }) async {
    if (errorHandlers == null) return Future.value();
    if (ignoreAbortedOperations) {
      final abortedError = ApplicationError.operationAborted();
      if (response.hasError(abortedError)) return Future.value();
    }
    for (final handler in errorHandlers!) {
      final match = await handler.isError(response);
      if (match) {
        final error = response.errors?.isEmpty ?? true ? null : response.errors?.first;
        if (error == null) return;
        await handler.handle(response.errors ?? <ApplicationError>[], input);
      }
    }
  }

  Future<void> applySuccessHandlers(Response<R, ApplicationError> response, I input) async {
    if (successHandlers == null) return;
    for (final handler in successHandlers!) {
      await handler.handle(response.payload, input);
    }
  }
}
