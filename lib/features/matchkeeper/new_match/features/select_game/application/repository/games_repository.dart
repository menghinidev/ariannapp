import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'games_repository.g.dart';

@riverpod
IGamesRepository gamesRepository(GamesRepositoryRef ref) {
  return MockGamesRepository();
}

abstract class IGamesRepository {
  Future<ApplicationResponse<List<Game>>> getGames();
}

class MockGamesRepository extends IGamesRepository {
  late final games = [
    Game.briscola(),
    Game.scopa(),
    Game.piccimbrigo(),
  ];

  @override
  Future<ApplicationResponse<List<Game>>> getGames() async {
    return Responses.success(games);
  }
}

class GamesRepository extends IGamesRepository {
  @override
  Future<ApplicationResponse<List<Game>>> getGames() {
    // TODO: implement getGames
    throw UnimplementedError();
  }
}
