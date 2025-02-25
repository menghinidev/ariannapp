import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';

class MockMatchRepository extends IMatchRepository {
  final List<ApplicationMatch> _matches = <ApplicationMatch>[];

  @override
  Future<ApplicationResponse<ApplicationMatch>> addMatch({
    required MatchBuilder builder,
  }) async {
    final game = builder.game!;
    final gameStrategy = game.strategy;
    final match = ApplicationMatch(
      id: IDGenerator.generateId,
      game: game.copyWith.strategy(
        doubleLife: builder.doubleLife ?? gameStrategy.doubleLife,
        threshold: builder.winningPoints ?? gameStrategy.threshold,
      ),
      lastUpdate: DateTime.now(),
      status: MatchStatus.ongoing,
      scores: builder.teams.newScores.toList(),
    );
    _matches.add(match);
    return Responses.success<ApplicationMatch, ApplicationError>(match);
  }

  @override
  Future<ApplicationResponse<List<ApplicationMatch>>> getMatches({MatchStatus? status}) async {
    late final List<ApplicationMatch> values;
    if (status != null) {
      values = _matches.where((match) => match.status == status).toList();
    } else {
      values = _matches;
    }
    return Responses.success<List<ApplicationMatch>, ApplicationError>(values);
  }

  @override
  Future<EmptyResponse> updateScore({
    required String matchId,
    required List<Score> scores,
  }) async {
    final match = _matches.firstWhere((match) => match.id == matchId);
    final matchIndex = _matches.indexOf(match);
    final newMatch = match
        .copyWith(
          scores: scores,
          lastUpdate: DateTime.now(),
        )
        .computeNewScore();
    _matches
      ..remove(match)
      ..insert(matchIndex, newMatch);
    return Responses.success<void, ApplicationError>(null);
  }

  @override
  Future<ApplicationResponse<ApplicationMatch>> restartMatch({
    required ApplicationMatch match,
  }) async {
    final teams = match.scores.map((e) => e.team).toList();
    final newScores = teams.newScores.toList();
    _matches.add(
      match.copyWith(
        id: IDGenerator.generateId,
        scores: newScores,
        status: MatchStatus.ongoing,
        lastUpdate: DateTime.now(),
      ),
    );
    return Responses.success<ApplicationMatch, ApplicationError>(match);
  }
}

extension on List<Team> {
  List<Score> get newScores {
    return map((team) => team.newScore).toList();
  }
}

extension on Team {
  Score get newScore {
    return Score(
      id: IDGenerator.generateId,
      lifeRemaining: 1,
      team: this,
      points: <int>[0],
    );
  }
}
