import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_match_use_case.g.dart';

@riverpod
AddMatchUseCase addMatchUseCase(AddMatchUseCaseRef ref) {
  return AddMatchUseCase(repo: ref.watch(matchRepositoryProvider));
}

class AddMatchUseCase extends UseCase<void, MatchBuilder> {
  AddMatchUseCase({required this.repo});

  final IMatchRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(MatchBuilder input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.addMatch(builder: input));
    return response;
  }
}
