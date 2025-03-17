import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/countables/usecase/create_countable/command/createcountablecommand.dart';
import 'package:ariannapp/features/counter/countables/usecase/get_countables/get_countables_use_case.dart';
import 'package:ariannapp/features/counter/shared/repository/provider.dart';
import 'package:ariannapp/features/counter/shared/repository/sources/i_counter_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_countable_use_case.g.dart';

@riverpod
CreateCountableUseCase createCountableUseCase(Ref ref) {
  final repo = ref.watch(counterRepositoryProvider);
  return CreateCountableUseCase(
    repo: repo,
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
    errorHandlers: [ShowSnackbarErrorHandler(contextProvider: (command) => command.context)],
    successHandlers: [
      ShowSnackbarSuccessHandler(contextProvider: (command) => command.context, message: 'Creato'),
      InvalidateProviderOnSuccessHandler(ref: ref, provider: getMyCountablesProvider),
    ],
  );
}

class CreateCountableUseCase extends UseCase<void, CreateCountableCommand> {
  CreateCountableUseCase({
    required this.repo,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
    super.interceptors,
  });

  final ICounterRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(CreateCountableCommand input) => repo.initializeCountable(input.data);
}
