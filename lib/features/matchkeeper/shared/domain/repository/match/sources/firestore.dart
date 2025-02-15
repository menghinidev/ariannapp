import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/repository/invoker.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/dto_builder/match_dto_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreMatchRepository extends IMatchRepository with RepositorySafeInvoker, MatchDtoBuilder {
  final instance = FirebaseFirestore.instance;
  static const String matchCollection = 'match';

  @override
  Future<ApplicationResponse<ApplicationMatch>> addMatch({
    required MatchBuilder builder,
  }) {
    final match = buildNewMatch(builder);
    return safeInvoke<ApplicationMatch, NullableDocRef>(
      request: () => instance.collection(matchCollection).add(match.toFirestore()),
      payloadMapper: (response) => match.copyWith(id: response!.id),
    );
  }

  @override
  Future<ApplicationResponse<List<ApplicationMatch>>> getMatches({MatchStatus? status}) {
    return safeInvoke<List<ApplicationMatch>, QuerySnapshot<Map<String, dynamic>>>(
      request: () => instance.collection(matchCollection).get(),
      payloadMapper: (response) {
        final matches = response.docs.map(ApplicationMatch.fromFirestore).toList();
        return status != null ? matches.where((e) => e.status == status).toList() : matches;
      },
    );
  }

  @override
  Future<ApplicationResponse<ApplicationMatch>> restartMatch({
    required ApplicationMatch match,
  }) async {
    final newMatch = buildRestartedMatch(match);
    return safeInvoke<ApplicationMatch, NullableDocRef>(
      request: () => instance.collection(matchCollection).add(newMatch.toFirestore()),
      payloadMapper: (response) => newMatch.copyWith(id: response!.id),
    );
  }

  @override
  Future<EmptyResponse> updateScore({
    required String matchId,
    required List<Score> scores,
  }) async {
    final document = instance.collection(matchCollection).doc(matchId);
    final matchResponse = await safeInvoke(
      request: document.get,
      payloadMapper: ApplicationMatch.fromFirestoreDoc,
    );
    final match = matchResponse.payload;
    if (matchResponse.isError || match == null) return Responses.failure([ApplicationError.generic()]);
    final newMatch = match.copyWith(scores: scores).computeNewScore();
    return safeInvoke(
      request: () => document.update(newMatch.toFirestore()),
      payloadMapper: (_) {},
    );
  }
}

typedef NullableDocRef = DocumentReference<Map<String, dynamic>>?;
