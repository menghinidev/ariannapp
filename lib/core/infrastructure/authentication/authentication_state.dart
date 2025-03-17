import 'dart:developer';

import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_state.g.dart';

@riverpod
AuthenticationController authenticationController(Ref ref) {
  return AuthenticationController();
}

class AuthenticationController {
  Future<EmptyResponse> signIn(String email, String password) => _handle(
        () => FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      );

  Future<EmptyResponse> signOut() => _handle(() => FirebaseAuth.instance.signOut());

  Future<EmptyResponse> _handle(Future<void> Function() callback) async {
    try {
      await callback();
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

@riverpod
Stream<User?> authenticationState(Ref ref) {
  return FirebaseAuth.instance.authStateChanges();
}
