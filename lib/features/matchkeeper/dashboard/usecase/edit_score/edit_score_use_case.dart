import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/edit_score/command/edit_score_command.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/get_matches/get_matches_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_score_use_case.g.dart';

@riverpod
EditScoreUseCase editScoreUseCase(Ref ref) {
  return EditScoreUseCase(
    repo: ref.watch(matchRepositoryProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (input) => input.context)],
    successHandlers: [
      InvalidateProviderOnSuccessHandler(ref: ref, provider: matchesProvider),
    ],
  );
}

class EditScoreUseCase extends UseCase<void, EditScoreCommand> {
  EditScoreUseCase({
    required this.repo,
    super.successHandlers,
    super.interceptors,
  });

  final IMatchRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(EditScoreCommand input) => repo.updateScore(
        matchId: input.match.id,
        scores: input.newScores,
      );
}
