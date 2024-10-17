import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_match_builder.freezed.dart';

@freezed
class MatchBuilder with _$MatchBuilder {
  factory MatchBuilder({
    Game? game,
    int? winningPoints,
    bool? doubleLife,
    @Default(<Team>[]) List<Team> teams,
  }) = _MatchBuilder;
}

extension MatchBuilderFeatures on MatchBuilder {
  bool get canBuild => teams.length >= 2 && game != null && winningPoints != null;
}
