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
    final mappedReduced = scores.map(totalPoints).toList()
      ..sort((a, b) => b.compareTo(a))
      ..toList();
    return _isOver(mappedReduced[0]);
  }

  int totalPoints(Score score) {
    final total = score.points.reduce((a, b) => a + b);
    final strategy = game.strategy;
    if (strategy.goingDownTo) {
      return strategy.threshold - total;
    } else {
      return strategy.startingFrom + total;
    }
  }

  bool _isOver(int points) {
    final strategy = game.strategy;
    if (strategy.goingDownTo) {
      return points <= strategy.threshold;
    } else {
      return points >= strategy.threshold;
    }
  }

  ApplicationMatch get sortedScores {
    final strategy = game.strategy;

    final winGoingUp = strategy.goingUpTo && strategy.winAtThreshold;
    final loseGoingDown = strategy.goingDownTo && !strategy.winAtThreshold;

    if (loseGoingDown || winGoingUp) {
      final sorted = [...scores]..sort((a, b) => totalPoints(b).compareTo(totalPoints(a)));
      return copyWith(scores: sorted);
    } else {
      final sorted = [...scores]..sort((a, b) => totalPoints(a).compareTo(totalPoints(b)));
      return copyWith(scores: sorted);
    }
  }
}
