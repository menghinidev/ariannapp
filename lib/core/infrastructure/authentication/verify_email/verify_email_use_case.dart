import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_email_use_case.g.dart';

@riverpod
VerifyEmailUseCase verifyEmailUseCase(Ref ref) {
  final context = ref.watch(navigatorKeyProvider).currentContext;
  return VerifyEmailUseCase(
    controller: ref.watch(authenticationControllerProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command)],
    successHandlers: [
      if (context != null)
        ShowSnackbarSuccessHandler(contextProvider: (_) => context, message: 'Email di verifica inviata'),
    ],
    errorHandlers: [
      if (context != null) ShowSnackbarErrorHandler(contextProvider: (_) => context),
    ],
  );
}

class VerifyEmailUseCase extends UseCase<void, BuildContext> {
  VerifyEmailUseCase({
    required this.controller,
    super.interceptors,
    super.successHandlers,
    super.errorHandlers,
  });

  final AuthenticationController controller;

  @override
  Future<Response<void, ApplicationError>> call(BuildContext input) => controller.verifyEmail();
}
