import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_repository.g.dart';

@riverpod
IMatchRepository matchRepository(MatchRepositoryRef ref) {
  return MatchRepository();
}

abstract class IMatchRepository {
  Future<ApplicationResponse<ApplicationMatch>> addMatch({
    required MatchBuilder builder,
  });
  Future<ApplicationResponse<List<ApplicationMatch>>> getMatches();
}

class MatchRepository extends IMatchRepository {
  final List<ApplicationMatch> _matches = [
    ApplicationMatch(
      game: Game.briscola(),
      scores: List.generate(
        2,
        (index) => Score(
          team: Team(
            id: index.toString(),
            players: [Player(id: 'player', name: 'Giocatore $index')],
          ),
          points: <int>[2, 15],
        ),
      ),
      status: MatchStatus.ongoing,
      lastUpdate: DateTime.now(),
      winningPoints: Game.briscola().standardWinningPonts,
      doubleLife: false,
    )
  ];

  @override
  Future<ApplicationResponse<ApplicationMatch>> addMatch({
    required MatchBuilder builder,
  }) async {
    final match = ApplicationMatch(
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
  Future<ApplicationResponse<List<ApplicationMatch>>> getMatches() async {
    return Responses.success<List<ApplicationMatch>, ApplicationError>(_matches);
  }
}
