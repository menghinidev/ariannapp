import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/i_players_repository.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/mock_players_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
IPlayersRepository playersRepository(PlayersRepositoryRef ref) {
  return MockPlayersRepository();
}
