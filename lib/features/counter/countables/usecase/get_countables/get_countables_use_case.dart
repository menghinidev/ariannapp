import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:ariannapp/features/counter/shared/repository/provider.dart';
import 'package:ariannapp/features/counter/shared/repository/sources/i_counter_repository.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_countables_use_case.g.dart';

@riverpod
Future<List<CountableData>> getMyCountables(Ref ref) async {
  final repo = ref.watch(counterRepositoryProvider);
  final context = ref.watch(navigatorKeyProvider).currentContext;
  final usecase = _GetCountablesUseCase(
    repo: repo,
    errorHandlers: [if (context != null) ShowSnackbarErrorHandler(contextProvider: (_) => context)],
  );
  final response = await usecase.call(null);
  return response.toFuture();
}

class _GetCountablesUseCase extends UseCase<List<CountableData>, void> {
  _GetCountablesUseCase({
    required this.repo,
    super.errorHandlers,
  });

  final ICounterRepository repo;

  @override
  Future<Response<List<CountableData>, ApplicationError>> call(void input) => repo.getCountables();
}
