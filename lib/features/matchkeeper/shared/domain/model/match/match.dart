import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match.freezed.dart';

@freezed
class Match with _$Match {
  factory Match({
    required Game game,
    required List<Score> scores,
    required MatchStatus status,
    required DateTime lastUpdate,
    required int winningPoints,
    required bool doubleLife,
  }) = _Match;
}

enum MatchStatus { completed, ongoing }
