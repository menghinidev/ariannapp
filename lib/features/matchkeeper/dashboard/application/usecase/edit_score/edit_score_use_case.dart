import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/application/usecase/edit_score/command/edit_score_command.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_score_use_case.g.dart';

@riverpod
EditScoreUseCase editScoreUseCase(EditScoreUseCaseRef ref) {
  return EditScoreUseCase(repo: ref.watch(matchRepositoryProvider));
}

class EditScoreUseCase extends UseCase<void, EditScoreCommand> {
  EditScoreUseCase({required this.repo});

  final IMatchRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(EditScoreCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.updateScore());
    return response;
  }
}
