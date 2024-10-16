import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/application/repository/players_repository.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_players_use_case.g.dart';

@riverpod
class ApplicationPlayers extends _$ApplicationPlayers {
  @override
  FutureOr<List<Player>> build() async {
    final repo = ref.watch(playersRepositoryProvider);
    final useCase = _GetPlayersUseCase(repo: repo);
    final response = await useCase.call(null);
    return response.toFuture();
  }
}

class _GetPlayersUseCase extends UseCase<List<Player>, void> {
  _GetPlayersUseCase({
    required this.repo,
  });

  final IPlayersRepository repo;

  @override
  Future<Response<List<Player>, ApplicationError>> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.getPlayers());
    return response;
  }
}
