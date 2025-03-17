import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/core/ui/components/loading/overlay_manager.dart';
import 'package:flutter/material.dart';

abstract class UseCaseInterceptor<T, I> {
  Future<ApplicationResponse<T>> processOutput(ApplicationResponse<T> output, I input) => Future.value(output);
  Future<EmptyResponse> processInput(I input) async => Responses.success<void, ApplicationError>(null);
}

class LoadingUseCaseInterceptor<T, I> extends UseCaseInterceptor<T, I> {
  LoadingUseCaseInterceptor({required this.contextProvider});

  final BuildContext Function(I input) contextProvider;
  @override
  Future<EmptyResponse> processInput(I input) {
    OverlayLoaderManager.instance.showLoader(contextProvider(input));
    return super.processInput(input);
  }

  @override
  Future<ApplicationResponse<T>> processOutput(ApplicationResponse<T> output, I input) {
    OverlayLoaderManager.instance.hideLoader();
    return super.processOutput(output, input);
  }
}
