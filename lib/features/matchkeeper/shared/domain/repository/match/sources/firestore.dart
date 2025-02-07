import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
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
  }) {
    // TODO: implement getMatches
    throw UnimplementedError();
  }

  @override
  Future<ApplicationResponse<List<ApplicationMatch>>> getMatches({MatchStatus? status}) {
    // TODO: implement getMatches
    throw UnimplementedError();
  }

  @override
  Future<ApplicationResponse<ApplicationMatch>> restartMatch({required ApplicationMatch match}) {
    // TODO: implement restartMatch
    throw UnimplementedError();
  }

  @override
  Future<EmptyResponse> updateScore({required String matchId, required List<Score> scores}) {
    // TODO: implement updateScore
    throw UnimplementedError();
  }
}
