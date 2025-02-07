import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/handlers/success.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/get_matches/get_matches_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restart_match_use_case.g.dart';

@riverpod
RestartMatchUseCase restartMatchUseCase(Ref ref) {
  return RestartMatchUseCase(
    repo: ref.watch(matchRepositoryProvider),
    successHandlers: [
      InvalidateProviderOnSuccessHandler(ref: ref, provider: matchesProvider),
    ],
  );
}

class RestartMatchUseCase extends UseCase<void, ApplicationMatch> {
  RestartMatchUseCase({
    required this.repo,
    super.successHandlers,
  });

  final IMatchRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(ApplicationMatch input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.restartMatch(match: input));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }
}
