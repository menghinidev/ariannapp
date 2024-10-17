import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_game/application/repository/games_repository.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_games_use_case.g.dart';

@riverpod
class ApplicationGames extends _$ApplicationGames {
  @override
  FutureOr<List<Game>> build() async {
    final repo = ref.watch(gamesRepositoryProvider);
    final useCase = _GetGamesUseCase(repo: repo);
    final response = await useCase.call(null);
    return response.toFuture();
  }
}

class _GetGamesUseCase extends UseCase<List<Game>, void> {
  _GetGamesUseCase({
    required this.repo,
  });

  final IGamesRepository repo;

  @override
  Future<Response<List<Game>, ApplicationError>> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.getGames());
    return response;
  }
}
