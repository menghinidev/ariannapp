import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/i_games_repository.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/mock_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
IGamesRepository gamesRepository(GamesRepositoryRef ref) {
  return MockGamesRepository();
}
