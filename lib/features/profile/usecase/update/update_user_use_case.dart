import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/profile/usecase/update/command/updateusercommand.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_user_use_case.g.dart';

@riverpod
UpdateUserUseCase updateUserUseCase(Ref ref) {
  return UpdateUserUseCase(
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
    successHandlers: [
      ShowSnackbarSuccessHandler(contextProvider: (command) => command.context, message: 'Profilo aggiornato'),
    ],
    errorHandlers: [
      ShowSnackbarErrorHandler(contextProvider: (command) => command.context),
    ],
  );
}

class UpdateUserUseCase extends UseCase<void, UpdateUserCommand> {
  UpdateUserUseCase({
    super.interceptors,
    super.successHandlers,
    super.errorHandlers,
  });

  @override
  Future<Response<void, ApplicationError>> call(UpdateUserCommand input) async {
    final name = input.name;
    if (name == null) return Responses.success<void, ApplicationError>(null);
    await input.user.updateDisplayName(name);
    final photoUrl = input.photoUrl;
    if (photoUrl != null) {
      await input.user.updatePhotoURL(photoUrl);
    }
    return Responses.success<void, ApplicationError>(null);
  }
}
