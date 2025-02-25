import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/i_players_repository.dart';

class MockPlayersRepository extends IPlayersRepository {
  final players = <Player>[];

  @override
  Future<ApplicationResponse<Player>> addPlayer(String name) async {
    final newValue = Player(id: 'id', name: name);
    players.add(newValue);
    return Responses.success(newValue);
  }

  @override
  Future<ApplicationResponse<List<Player>>> getPlayers() async {
    return Responses.success(players);
  }

  @override
  Future<ApplicationResponse<Player>> getPlayer(String id) {
    final player = players.firstWhere((element) => element.id == id);
    return Future.value(Responses.success(player));
  }
}
