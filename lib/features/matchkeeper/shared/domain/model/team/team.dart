import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';

@freezed
class Team with _$Team {
  factory Team({
    required List<Player> players,
    String? name,
  }) = _Team;
}
