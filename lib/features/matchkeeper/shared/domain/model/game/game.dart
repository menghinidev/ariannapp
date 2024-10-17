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

  String get name {
    return map(
      briscola: (_) => 'Briscola',
      scopa: (_) => 'Scopa',
      piccimbrigo: (_) => 'Piccimbrigo',
    );
  }
}
