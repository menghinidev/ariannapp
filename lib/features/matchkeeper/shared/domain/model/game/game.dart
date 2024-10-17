import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  factory Game.briscola() = Briscola;
  factory Game.scopa() = Scopa;
  factory Game.piccimbrigo() = Piccimbrigo;
}

extension GameFeatures on Game {
  bool get supportsDoubleLife => true;

  int get standardWinningPonts {
    return map(
      briscola: (_) => 11,
      scopa: (_) => 31,
      piccimbrigo: (_) => 101,
    );
  }

  String get name {
    return map(
      briscola: (_) => 'Briscola',
      scopa: (_) => 'Scopa',
      piccimbrigo: (_) => 'Piccimbrigo',
    );
  }
}
