import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:ariannapp/features/counter/shared/repository/provider.dart';
import 'package:ariannapp/features/counter/shared/repository/sources/i_counter_repository.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_countables_use_case.g.dart';

@riverpod
Future<List<CountableData>> getMyCountables(Ref ref) async {
  final repo = ref.watch(counterRepositoryProvider);
  final context = ref.watch(navigatorKeyProvider).currentContext;
  final user = ref.watch(authenticationStateProvider).valueOrNull;
  final usecase = _GetCountablesUseCase(
    repo: repo,
    user: user,
    errorHandlers: [if (context != null) ShowSnackbarErrorHandler(contextProvider: (_) => context)],
  );
  final response = await usecase.call(null);
  return response.toFuture();
}

class _GetCountablesUseCase extends UseCase<List<CountableData>, void> {
  _GetCountablesUseCase({required this.repo, required this.user, super.errorHandlers});

  final ICounterRepository repo;
  final User? user;

  @override
  Future<Response<List<CountableData>, ApplicationError>> call(void input) async {
    final response = await repo.getCountables();
    return response.map((e) => e!.where((e) => e.isPublic || e.email == user?.email).toList());
  }
}
