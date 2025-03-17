import 'dart:developer';

import 'package:ariannapp/core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_use_case.g.dart';

@riverpod
LoginUseCase loginUseCase(Ref ref) {
  return LoginUseCase(
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
  );
}

class LoginUseCase extends UseCase<void, LoginCommand> {
  LoginUseCase({
    super.interceptors,
  });

  @override
  Future<Response<void, ApplicationError>> call(LoginCommand input) async {
    try {
      final firebase = FirebaseAuth.instance;
      await firebase.signInWithEmailAndPassword(
        email: input.email,
        password: input.password,
      );
      return Future.value(Responses.success<void, ApplicationError>(null));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'operation-not-allowed':
          log("Anonymous auth hasn't been enabled for this project.");
        default:
          log('Unknown error.');
      }
      return Future.value(Responses.failure<void, ApplicationError>([ApplicationError.unauthorized()]));
    } catch (e) {
      return Future.value(Responses.failure<void, ApplicationError>([ApplicationError.unauthorized()]));
    }
  }
}
