import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/application/usecase/get_matches/command/get_matches_command.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_matches_use_case.g.dart';

@riverpod
FutureOr<List<ApplicationMatch>> matches(MatchesRef ref, GetMatchesCommand command) async {
  final useCase = ref.watch(getMatchesUseCaseProvider);
  final response = await useCase.call(command);
  return response.toFuture();
}

@riverpod
GetMatchesUseCase getMatchesUseCase(GetMatchesUseCaseRef ref) {
  return GetMatchesUseCase(repo: ref.watch(matchRepositoryProvider));
}

class GetMatchesUseCase extends UseCase<List<ApplicationMatch>, GetMatchesCommand> {
  GetMatchesUseCase({required this.repo});

  final IMatchRepository repo;

  @override
  Future<Response<List<ApplicationMatch>, ApplicationError>> call(GetMatchesCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.getMatches(status: input.status));
    return response;
  }
}
