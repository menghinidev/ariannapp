import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/generator/id_generator.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreMatchRepository extends IMatchRepository {
  final instance = FirebaseFirestore.instance;
  static const String matchCollection = 'match';

  @override
  Future<ApplicationResponse<ApplicationMatch>> addMatch({
    required MatchBuilder builder,
  }) async {
    try {
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
        scores: builder.teams
            .map(
              (e) => Score(
                id: IDGenerator.generateId,
                team: e,
                points: [],
              ),
            )
            .toList(),
      );
      await instance.collection(matchCollection).add(match.toFirestore());

      return Responses.success(match);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<ApplicationResponse<List<ApplicationMatch>>> getMatches({MatchStatus? status}) async {
    try {
      final snapshot = await instance.collection(matchCollection).get();
      final matches = snapshot.docs.map(ApplicationMatch.fromFirestore).toList();
      final filtered = status != null ? matches.where((e) => e.status == status).toList() : matches;
      return Responses.success(filtered);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<ApplicationResponse<ApplicationMatch>> restartMatch({
    required ApplicationMatch match,
  }) async {
    try {
      final game = match.game;
      final gameStrategy = game.strategy;
      final newMatch = match.copyWith(
        id: IDGenerator.generateId,
        game: game.copyWith.strategy(
          doubleLife: gameStrategy.doubleLife,
          threshold: gameStrategy.threshold,
        ),
        lastUpdate: DateTime.now(),
        status: MatchStatus.ongoing,
        scores: match.scores.map((e) => e.copyWith(points: [])).toList(),
      );
      final document = instance.collection(matchCollection).doc(newMatch.id);
      await document.set(newMatch.toFirestore());
      return Responses.success(newMatch);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<EmptyResponse> updateScore({
    required String matchId,
    required List<Score> scores,
  }) async {
    try {
      final document = instance.collection(matchCollection).doc(matchId);
      await document.update({
        'scores': scores.map((e) => e.toFirestore()).toList(),
        'lastUpdate': DateTime.now(),
      });
      return Responses.success(null);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }
}
