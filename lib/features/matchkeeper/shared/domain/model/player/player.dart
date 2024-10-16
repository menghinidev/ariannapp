import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  factory Player({
    required String id,
    required String name,
  }) = _Player;
}
