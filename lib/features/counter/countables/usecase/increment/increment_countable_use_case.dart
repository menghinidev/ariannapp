import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/countables/usecase/get_countables/get_countables_use_case.dart';
import 'package:ariannapp/features/counter/countables/usecase/increment/command/incrementcountablecommand.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:ariannapp/features/counter/shared/repository/provider.dart';
import 'package:ariannapp/features/counter/shared/repository/sources/i_counter_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'increment_countable_use_case.g.dart';

@riverpod
IncrementCountableUseCase incrementCountableUseCase(Ref ref) {
  final repo = ref.watch(counterRepositoryProvider);
  return IncrementCountableUseCase(
    repo: repo,
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (command) => command.context)],
    errorHandlers: [ShowSnackbarErrorHandler(contextProvider: (command) => command.context)],
    successHandlers: [
      ShowSnackbarSuccessHandler(contextProvider: (command) => command.context, message: 'Incrementato'),
      InvalidateProviderOnSuccessHandler(ref: ref, provider: getMyCountablesProvider),
    ],
  );
}

class IncrementCountableUseCase extends UseCase<void, IncrementCountableCommand> {
  IncrementCountableUseCase({
    required this.repo,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
    super.interceptors,
  });

  final ICounterRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(IncrementCountableCommand input) {
    final event = CountableEvent(timestamp: DateTime.now());
    final data = input.data;
    final updated = data.copyWith(counter: data.counter + 1, events: [...data.events, event]);
    return repo.updateCountable(updated);
  }
}
