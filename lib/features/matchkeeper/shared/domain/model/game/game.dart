import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  factory Game.briscola() = Briscola;
  factory Game.scopa() = Scopa;
  factory Game.piccimbrigo() = Piccimbrigo;
}
