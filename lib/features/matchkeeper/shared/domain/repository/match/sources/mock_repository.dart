import 'dart:math';

import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';

class MockMatchRepository extends IMatchRepository {
  /* final List<ApplicationMatch> _matches = List.generate(
    3,
    (id) => ApplicationMatch(
      id: id.toString(),
      game: Game.briscola(),
      scores: List.generate(
        2,
        (index) => Score(
          team: Team(
            id: index.toString(),
            players: [Player(id: 'player', name: 'Giocatore $index')],
          ),
          points: <int>[2, 2],
        ),
      ),
      status: id == 2 ? MatchStatus.completed : MatchStatus.ongoing,
      lastUpdate: DateTime.now(),
      winningPoints: Game.briscola().standardWinningPonts,
      doubleLife: false,
    ),
  ); */

  final List<ApplicationMatch> _matches = <ApplicationMatch>[];

  @override
  Future<ApplicationResponse<ApplicationMatch>> addMatch({
    required MatchBuilder builder,
  }) async {
    final match = ApplicationMatch(
      id: _matches.length.toString(),
      game: builder.game!,
      winningPoints: builder.winningPoints!,
      doubleLife: builder.doubleLife ?? false,
      lastUpdate: DateTime.now(),
      status: MatchStatus.ongoing,
      scores: builder.teams.map((team) => Score(points: <int>[0], team: team)).toList(),
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
    final newScores = [...scores]..sort((a, b) => b.totalPoints.compareTo(a.totalPoints));
    var newMatch = match.copyWith(
      scores: newScores,
      lastUpdate: DateTime.now(),
    );
    if (newMatch.isOver) newMatch = newMatch.copyWith(status: MatchStatus.completed);
    _matches
      ..remove(match)
      ..add(newMatch)
      ..sort((a, b) => b.lastUpdate.compareTo(a.lastUpdate));
    return Responses.success<void, ApplicationError>(null);
  }

  @override
  Future<ApplicationResponse<ApplicationMatch>> restartMatch({
    required ApplicationMatch match,
  }) async {
    final teams = match.scores.map((e) => e.team).toList();
    final newScores = teams
        .map(
          (e) => Score(
            team: e,
            points: [0],
          ),
        )
        .toList();
    _matches.add(
      match.copyWith(
        scores: newScores,
        status: MatchStatus.ongoing,
        lastUpdate: DateTime.now(),
        id: Random().nextInt(200).toString(),
      ),
    );
    return Responses.success<ApplicationMatch, ApplicationError>(match);
  }
}
