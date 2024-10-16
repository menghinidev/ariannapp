import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_match_builder.freezed.dart';

@freezed
class MatchBuilder with _$MatchBuilder {
  factory MatchBuilder({
    Game? game,
    int? winningPoints,
    bool? doubleLife,
  }) = _MatchBuilder;
}

extension MatchBuilderFeatures on MatchBuilder {
  bool get canBuild {
    if (game == null) return false;
    if (winningPoints == null) return false;
    if (doubleLife == null) return false;
    return true;
  }
}
