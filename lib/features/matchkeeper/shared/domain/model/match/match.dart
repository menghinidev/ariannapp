import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match.freezed.dart';

@freezed
class ApplicationMatch with _$ApplicationMatch {
  factory ApplicationMatch({
    required String id,
    required Game game,
    required List<Score> scores,
    required MatchStatus status,
    required DateTime lastUpdate,
  }) = _ApplicationMatch;
}

enum MatchStatus { completed, ongoing }

extension MatchStatusFeature on ApplicationMatch {
  bool get isOver {
    if (status == MatchStatus.completed) return true;
    final points = scores.map(game.strategy.totalPoints).toList()
      ..sort((a, b) => b.compareTo(a))
      ..toList();
    final strategy = game.strategy;
    if (strategy.goingDownTo) {
      return points[0] <= strategy.threshold;
    } else {
      return points[0] >= strategy.threshold;
    }
  }

  ApplicationMatch get sortedScores {
    final strategy = game.strategy;
    return copyWith(scores: strategy.sortedScores(scores));
  }
}

extension on WinningStrategy {
  List<Score> sortedScores(List<Score> scores) {
    final winGoingUp = goingUpTo && winAtThreshold;
    final loseGoingDown = goingDownTo && !winAtThreshold;

    if (loseGoingDown || winGoingUp) {
      final sorted = [...scores]..sort((a, b) => totalPoints(b).compareTo(totalPoints(a)));
      return sorted;
    } else {
      final sorted = [...scores]..sort((a, b) => totalPoints(a).compareTo(totalPoints(b)));
      return sorted;
    }
  }

  int totalPoints(Score score) {
    final total = score.points.reduce((a, b) => a + b);
    if (goingDownTo) {
      return threshold - total;
    } else {
      return startingFrom + total;
    }
  }
}
