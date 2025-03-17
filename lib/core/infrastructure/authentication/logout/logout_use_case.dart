import 'package:ariannapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_use_case.g.dart';

@riverpod
LogoutUseCase logoutUseCase(Ref ref) {
  return LogoutUseCase(
    controller: ref.watch(authenticationControllerProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command)],
  );
}

class LogoutUseCase extends UseCase<void, BuildContext> {
  LogoutUseCase({
    required this.controller,
    super.interceptors,
  });

  final AuthenticationController controller;

  @override
  Future<Response<void, ApplicationError>> call(BuildContext input) => controller.signOut();
}
