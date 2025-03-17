import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/authentication/recover_password/command/recoverpasswordcommand.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recover_password_use_case.g.dart';

@riverpod
RecoverPasswordUseCase recoverPasswordUseCase(Ref ref) {
  final context = ref.watch(navigatorKeyProvider).currentContext;
  return RecoverPasswordUseCase(
    controller: ref.watch(authenticationControllerProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
    successHandlers: [
      if (context != null)
        ShowSnackbarSuccessHandler(contextProvider: (command) => command.context, message: 'Email di recupero inviata'),
    ],
    errorHandlers: [
      if (context != null) ShowSnackbarErrorHandler(contextProvider: (command) => command.context),
    ],
  );
}

class RecoverPasswordUseCase extends UseCase<void, RecoverPasswordCommand> {
  RecoverPasswordUseCase({
    required this.controller,
    super.interceptors,
    super.successHandlers,
    super.errorHandlers,
  });

  final AuthenticationController controller;

  @override
  Future<Response<void, ApplicationError>> call(RecoverPasswordCommand input) =>
      controller.recoverPassword(input.email);
}
