import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';

@freezed
class Team with _$Team {
  factory Team({
    required String id,
    required List<Player> players,
    String? name,
  }) = _Team;
}

extension PlayersFormatter on Team {
  String get playersFormatted {
    return players.map((player) => player.name).join(', ');
  }
}
