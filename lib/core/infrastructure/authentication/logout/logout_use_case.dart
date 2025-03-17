import 'dart:developer';

import 'package:ariannapp/core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_use_case.g.dart';

@riverpod
LogoutUseCase logoutUseCase(Ref ref) {
  return LogoutUseCase(
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command)],
  );
}

class LogoutUseCase extends UseCase<void, BuildContext> {
  LogoutUseCase({
    super.interceptors,
  });

  @override
  Future<Response<void, ApplicationError>> call(BuildContext input) async {
    try {
      final firebase = FirebaseAuth.instance;
      await firebase.signOut();
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
