import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/i_players_repository.dart';
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

@riverpod
class TeamPlayers extends _$TeamPlayers {
  @override
  FutureOr<List<Player>> build(Team team) async {
    final repo = ref.watch(playersRepositoryProvider);
    final useCase = _GetTeamPlayersUseCase(repo: repo);
    final response = await useCase.call(team);
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

class _GetTeamPlayersUseCase extends UseCase<List<Player>, Team> {
  _GetTeamPlayersUseCase({
    required this.repo,
  });

  final IPlayersRepository repo;

  @override
  Future<Response<List<Player>, ApplicationError>> call(Team input) async {
    final check = await checkRequirements();
    final players = <Player>[];
    for (final player in input.players) {
      await check.flatMapAsync((e) async {
        final response = await repo.getPlayer(player);
        players.add(response.payload!);
        return response;
      });
    }
    return Responses.success(players);
  }
}
