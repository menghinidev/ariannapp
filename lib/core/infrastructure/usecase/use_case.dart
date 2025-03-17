import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/handlers/handler.dart';
import 'package:ariannapp/core/infrastructure/usecase/interceptors/use_case_interceptor.dart';
import 'package:ariannapp/core/infrastructure/usecase/requirements/requirement.dart';
import 'package:ariannapp/core/infrastructure/usecase/validator/use_case_validator.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:ariannapp/core/ui/components/loading/overlay_manager.dart';
import 'package:flutter/material.dart';

abstract class UseCase<R, I> {
  UseCase({
    this.requirements,
    this.errorHandlers,
    this.successHandlers,
    this.validators,
    this.interceptors,
  });
  final List<UseCaseRequirement>? requirements;
  final List<UseCaseValidator<I>>? validators;
  final List<UseCaseErrorHandler<R, I>>? errorHandlers;
  final List<UseCaseSuccessHandler<R, I>>? successHandlers;
  final List<UseCaseInterceptor<R, I>>? interceptors;

  Future<EmptyResponse> transformInput(I input) async {
    for (final transformer in interceptors ?? <UseCaseInterceptor<R, I>>[]) {
      await transformer.processInput(input);
    }
    return Responses.success<void, ApplicationError>(null);
  }

  Future<Response<R, ApplicationError>> transformOutput(Response<R, ApplicationError> response, I input) async {
    for (final transformer in interceptors ?? <UseCaseInterceptor<R, I>>[]) {
      await transformer.processOutput(response, input);
    }
    return response;
  }

  Future<Response<R, ApplicationError>> call(I input);

  Future<Response<R, ApplicationError>> execute(I input) async {
    final check = await checkRequirements();
    final inputValidation = await check.flatMapAsync((_) => validateInput(input));
    await inputValidation.ifSuccessAsync((_) => transformInput(input));
    final response = await inputValidation.flatMapAsync((_) => call(input));
    await transformOutput(response, input);
    await applyErrorHandlers(response, input);
    await applySuccessHandlers(response, input);
    return response;
  }

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

extension ResponseLoadingManager<R, I> on Response<R, I> {
  Response<R, I> startLoading(BuildContext context) {
    if (isError) return this;
    OverlayLoaderManager.instance.showLoader(context);
    return this;
  }

  Response<R, I> completeLoading() {
    OverlayLoaderManager.instance.hideLoader();
    return this;
  }
}
