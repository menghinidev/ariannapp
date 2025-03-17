import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_state.g.dart';

@riverpod
Stream<User?> authenticationState(Ref ref) {
  return FirebaseAuth.instance.authStateChanges();
}
