import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/countables/usecase/delete_countable/command/deletecountablecommand.dart';
import 'package:ariannapp/features/counter/countables/usecase/get_countables/get_countables_use_case.dart';
import 'package:ariannapp/features/counter/shared/repository/provider.dart';
import 'package:ariannapp/features/counter/shared/repository/sources/i_counter_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_countable_use_case.g.dart';

@riverpod
DeleteCountableUseCase deleteCountableUseCase(Ref ref) {
  final repo = ref.watch(counterRepositoryProvider);
  return DeleteCountableUseCase(
    repo: repo,
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
    errorHandlers: [ShowSnackbarErrorHandler(contextProvider: (command) => command.context)],
    successHandlers: [
      ShowSnackbarSuccessHandler(contextProvider: (command) => command.context, message: 'Eliminato'),
      InvalidateProviderOnSuccessHandler(ref: ref, provider: getMyCountablesProvider),
    ],
  );
}

class DeleteCountableUseCase extends UseCase<void, DeleteCountableCommand> {
  DeleteCountableUseCase({
    required this.repo,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
    super.interceptors,
  });

  final ICounterRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(DeleteCountableCommand input) => repo.deleteCountable(input.id);
}
