import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/profile/usecase/change_password/command/changepasswordcommand.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_use_case.g.dart';

@riverpod
ChangePasswordUseCase changePasswordUseCase(Ref ref) {
  final context = ref.watch(navigatorKeyProvider).currentContext;
  return ChangePasswordUseCase(
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
    successHandlers: [
      if (context != null) ShowSnackbarSuccessHandler(contextProvider: (_) => context, message: 'Password aggiornata'),
    ],
    errorHandlers: [
      if (context != null) ShowSnackbarErrorHandler(contextProvider: (_) => context),
    ],
  );
}

class ChangePasswordUseCase extends UseCase<void, ChangePasswordCommand> {
  ChangePasswordUseCase({
    super.interceptors,
    super.successHandlers,
    super.errorHandlers,
  });

  @override
  Future<Response<void, ApplicationError>> call(ChangePasswordCommand input) async {
    try {
      await input.user.updatePassword(input.newPassword);
    } on FirebaseAuthException catch (_) {
      return Responses.failure<void, ApplicationError>([ApplicationError.generic()]);
    }
    return Responses.success<void, ApplicationError>(null);
  }
}
