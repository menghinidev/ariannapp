import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required String id,
    required String name,
    required WinningStrategy strategy,
  }) = _Game;
}

@freezed
class WinningStrategy with _$WinningStrategy {
  const factory WinningStrategy({
    required int startingFrom,
    required bool goingUpTo,
    required bool goingDownTo,
    required int threshold,
    required bool winAtThreshold,
    required bool doubleLife,
  }) = _WinningStrategy;
}

extension GameFeatures on Game {
  Game changeStandardPoints(int points) {
    return copyWith.strategy(threshold: points);
  }

  Game get toggleDoubleLife {
    return copyWith.strategy(doubleLife: !strategy.doubleLife);
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
