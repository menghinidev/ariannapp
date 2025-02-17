import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/i_players_repository.dart';

class MockPlayersRepository extends IPlayersRepository {
  final players = <Player>[];
/*   late final players = List.generate(
    10,
    (index) => Player(
      id: index.toString(),
      name: playerNames[index],
    ),
  );
  late final playerNames = [
    'Pippo',
    'Pluto',
    'Paolo',
    'Ciccio',
    'Gino',
    'Gina',
    'Giovanni',
    'Giovanna',
    'Giovannino',
    'Giovannina',
  ]; */

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
    // TODO(someone): implement getPlayer
    throw UnimplementedError();
  }
}
