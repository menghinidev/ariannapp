import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';

abstract class IMatchRepository {
  Future<ApplicationResponse<ApplicationMatch>> addMatch({required MatchBuilder builder});
  Future<ApplicationResponse<ApplicationMatch>> restartMatch({required ApplicationMatch match});
  Future<EmptyResponse> updateScore({
    required String matchId,
    required List<Score> scores,
  });
  Future<ApplicationResponse<List<ApplicationMatch>>> getMatches({MatchStatus? status});
}
