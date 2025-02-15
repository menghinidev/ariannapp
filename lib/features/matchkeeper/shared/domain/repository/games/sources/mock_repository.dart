import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/i_games_repository.dart';

class MockGamesRepository extends IGamesRepository with GameFactory {
  late final games = [
    briscola,
    scopa,
    picci,
  ];

  @override
  Future<ApplicationResponse<List<Game>>> getGames() async {
    return Responses.success(games);
  }
}

mixin GameFactory {
  Game get briscola => const Game(
        id: '0',
        name: 'Briscola',
        strategy: WinningStrategy(
          goingDownTo: false,
          goingUpTo: true,
          startingFrom: 0,
          threshold: 11,
          winAtThreshold: true,
          doubleLife: false,
        ),
      );

  Game get scopa => const Game(
        id: '1',
        name: 'Scopa',
        strategy: WinningStrategy(
          goingDownTo: false,
          goingUpTo: true,
          startingFrom: 0,
          threshold: 31,
          winAtThreshold: true,
          doubleLife: false,
        ),
      );

  Game get picci => const Game(
        id: '2',
        name: 'Piccimbrigo',
        strategy: WinningStrategy(
          goingDownTo: false,
          goingUpTo: true,
          startingFrom: 0,
          threshold: 101,
          winAtThreshold: false,
          doubleLife: false,
        ),
      );
}
