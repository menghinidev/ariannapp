import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/i_games_repository.dart';

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
