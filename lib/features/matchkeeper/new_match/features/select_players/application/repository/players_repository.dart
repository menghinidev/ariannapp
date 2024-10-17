import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'players_repository.g.dart';

@Riverpod(keepAlive: true)
IPlayersRepository playersRepository(PlayersRepositoryRef ref) {
  return MockPlayersRepository();
}

abstract class IPlayersRepository {
  Future<ApplicationResponse<Player>> addPlayer(String name);
  Future<ApplicationResponse<List<Player>>> getPlayers();
}

class MockPlayersRepository extends IPlayersRepository {
  late final players = List.generate(
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
  ];

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
}

class PlayersRepository extends IPlayersRepository {
  @override
  Future<ApplicationResponse<Player>> addPlayer(String name) {
    // TODO: implement addPlayer
    throw UnimplementedError();
  }

  @override
  Future<ApplicationResponse<List<Player>>> getPlayers() {
    // TODO: implement getPlayers
    throw UnimplementedError();
  }
}
