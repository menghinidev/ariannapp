import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/handlers/success.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/get_matches/get_matches_use_case.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_match_use_case.g.dart';

@riverpod
AddMatchUseCase addMatchUseCase(Ref ref) {
  return AddMatchUseCase(
    repo: ref.watch(matchRepositoryProvider),
    successHandlers: [
      InvalidateProviderOnSuccessHandler(ref: ref, provider: matchesProvider),
    ],
  );
}

class AddMatchUseCase extends UseCase<void, MatchBuilder> {
  AddMatchUseCase({
    required this.repo,
    super.successHandlers,
  });

  final IMatchRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(MatchBuilder input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.addMatch(builder: input));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }
}
