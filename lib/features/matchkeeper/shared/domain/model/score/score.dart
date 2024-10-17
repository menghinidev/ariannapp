import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score.freezed.dart';

@freezed
class Score with _$Score {
  factory Score({
    required Team team,
    required List<int> points,
  }) = _Score;
}

extension ScoreFeatures on Score {
  int get totalPoints => points.reduce((a, b) => a + b);
}
