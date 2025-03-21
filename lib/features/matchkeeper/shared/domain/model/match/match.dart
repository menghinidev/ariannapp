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
    final standings = scores.map(game.strategy.totalPoints).toList()
      ..sort((a, b) => b.compareTo(a))
      ..toList();
    final firstPlacePoints = standings.first;
    final strategy = game.strategy;
    if (strategy.goingDownTo) {
      return firstPlacePoints <= strategy.threshold;
    } else {
      return firstPlacePoints >= strategy.threshold;
    }
  }

  ApplicationMatch computeNewScore() {
    if (_isOver) {
      final standings = game.strategy.sortedScores(scores);
      final exceedingScore = standings.last;
      final lowestScore = standings.first;
      var newExceedingScore = exceedingScore.copyWith(lifeRemaining: exceedingScore.lifeRemaining - 1);
      if (newExceedingScore.lifeRemaining == 0) {
        return copyWith(status: MatchStatus.completed);
      }
      newExceedingScore = newExceedingScore.copyWith(
        points: [...lowestScore.points]
          ..removeLast()
          ..add(lowestScore.points.last + 1),
      );
      final newScores = [...scores]
        ..remove(exceedingScore)
        ..add(newExceedingScore);
      return copyWith(scores: newScores).sortedScores;
    }
    return sortedScores;
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
    return scores.map((e) {
      if (e.points.isEmpty) return '0';
      return e.points.reduce((a, b) => a + b).toString();
    }).join(' - ');
  }

  int totalPoints(Score score) {
    final strategy = game.strategy;
    if (score.points.isEmpty) return 0;
    return strategy.totalPoints(score);
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
    if (score.points.isEmpty) return 0;
    final total = score.points.reduce((a, b) => a + b);
    if (goingDownTo) {
      return threshold - total;
    } else {
      return startingFrom + total;
    }
  }
}
