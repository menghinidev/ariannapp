import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/firestore.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/i_games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
IGamesRepository gamesRepository(Ref ref) {
  return FirestoreGamesRepository();
}
