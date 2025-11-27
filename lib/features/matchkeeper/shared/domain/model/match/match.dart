import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class ApplicationMatch with _$ApplicationMatch {
  @JsonSerializable(explicitToJson: true)
  factory ApplicationMatch({
    required String id,
    required Game game,
    required List<Score> scores,
    required MatchStatus status,
    required DateTime lastUpdate,
  }) = _ApplicationMatch;

  factory ApplicationMatch.fromJson(Map<String, dynamic> json) => _$ApplicationMatchFromJson(json);

  factory ApplicationMatch.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;

    return ApplicationMatch.fromJson(json);
  }

  factory ApplicationMatch.fromFirestoreDoc(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()!;
    json['id'] = id;
    return ApplicationMatch.fromJson(json);
  }
}

enum MatchStatus { completed, ongoing }

extension MatchStatusFeature on ApplicationMatch {
  bool get _isOver {
    if (status == MatchStatus.completed) return true;
    final strategy = game.strategy;

    final standings = strategy.sortedScores(scores).map(totalPoints).toList();
    final lastPlacedScore = standings.last;

    if (strategy.goingDownTo) {
      return lastPlacedScore < strategy.threshold;
    } else {
      return lastPlacedScore > strategy.threshold;
    }
  }

  ApplicationMatch processRound() {
    if (_isOver) {
      if (!game.strategy.doubleLife) return copyWith(status: MatchStatus.completed);

      final sortedScores = game.strategy.sortedScores(scores);
      if (sortedScores.length < 2) return copyWith(status: MatchStatus.completed);

      final lastPlaced = sortedScores.last;

      if (lastPlaced.lifeRemaining <= 1) {
        return copyWith(status: MatchStatus.completed);
      }

      final secondLastPlaced = sortedScores[sortedScores.length - 2];

      final newLastPlacedScore = _processNewScoreLife(lastPlaced, secondLastPlaced);
      final newScores =
          [...scores]
            ..remove(lastPlaced)
            ..add(newLastPlacedScore);
      return copyWith(scores: newScores).sortedScores;
    }
    return sortedScores;
  }

  Score _processNewScoreLife(Score lastPlaced, Score secondLastPlaced) {
    final lastPlaceNewPoints = [...secondLastPlaced.points];
    final latestPoint = lastPlaceNewPoints.removeLast() + 1;
    lastPlaceNewPoints.add(latestPoint);
    return lastPlaced.copyWith(points: lastPlaceNewPoints, lifeRemaining: lastPlaced.lifeRemaining - 1);
  }

  ApplicationMatch get sortedScores {
    final strategy = game.strategy;
    return copyWith(scores: strategy.sortedScores(scores));
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson()..remove('id');
    return json;
  }

  String get formattedScore {
    return scores
        .map((e) {
          if (e.points.isEmpty) return '0';
          return e.points.reduce((a, b) => a + b).toString();
        })
        .join(' - ');
  }

  int totalPoints(Score score) {
    final strategy = game.strategy;
    if (score.points.isEmpty) return 0;
    return strategy.totalPoints(score);
  }
}

extension on WinningStrategy {
  List<Score> sortedScores(List<Score> scores) {
    final loseAtZero = !winAtThreshold;
    final winGoingUp = goingUpTo && winAtThreshold;
    final loseGoingDown = goingDownTo && loseAtZero;

    if (loseGoingDown || winGoingUp) {
      final sorted = [...scores]..sort((a, b) => totalPoints(b).compareTo(totalPoints(a)));
      return sorted;
    } else {
      final sorted = [...scores]..sort((a, b) => totalPoints(a).compareTo(totalPoints(b)));
      return sorted;
    }
  }

  int totalPoints(Score score) {
    if (score.points.isEmpty) return 0;
    final total = score.points.reduce((a, b) => a + b);
    if (goingDownTo) {
      return threshold - total;
    } else {
      return startingFrom + total;
    }
  }
}
