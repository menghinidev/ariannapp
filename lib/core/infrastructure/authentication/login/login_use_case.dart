import 'package:ariannapp/core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_use_case.g.dart';

@riverpod
LoginUseCase loginUseCase(Ref ref) {
  return LoginUseCase(
    controller: ref.watch(authenticationControllerProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
  );
}

class LoginUseCase extends UseCase<void, LoginCommand> {
  LoginUseCase({
    required this.controller,
    super.interceptors,
  });

  final AuthenticationController controller;

  @override
  Future<Response<void, ApplicationError>> call(LoginCommand input) => controller.signIn(
        input.email,
        input.password,
      );
}
