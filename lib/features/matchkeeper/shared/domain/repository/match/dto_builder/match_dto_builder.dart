import 'package:ariannapp/core/infrastructure/utils/generator/id_generator.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';

mixin MatchDtoBuilder {
  ApplicationMatch buildNewMatch(MatchBuilder matchBuilder) {
    final game = matchBuilder.game!;
    final gameStrategy = game.strategy;
    return _buildMatch(
      game: game,
      strategy: gameStrategy.copyWith(
        doubleLife: matchBuilder.doubleLife ?? gameStrategy.doubleLife,
        threshold: matchBuilder.winningPoints ?? gameStrategy.threshold,
      ),
      scores: matchBuilder.teams.newScores,
    );
  }

  ApplicationMatch buildRestartedMatch(ApplicationMatch match) {
    return _buildMatch(
      game: match.game,
      strategy: match.game.strategy,
      scores: match.restartedScores,
    );
  }

  ApplicationMatch _buildMatch({
    required WinningStrategy strategy,
    required Game game,
    required List<Score> scores,
  }) {
    return ApplicationMatch(
      id: IDGenerator.generateId,
      game: game.copyWith.strategy(
        doubleLife: strategy.doubleLife,
        threshold: strategy.threshold,
      ),
      lastUpdate: DateTime.now(),
      status: MatchStatus.ongoing,
      scores: scores,
    );
  }
}

extension on List<Team> {
  List<Score> get newScores {
    return map(
      (e) => Score(
        id: IDGenerator.generateId,
        team: e,
        points: [],
      ),
    ).toList();
  }
}

extension on ApplicationMatch {
  List<Score> get restartedScores {
    return scores.map((e) => e.copyWith(points: [])).toList();
  }
}
