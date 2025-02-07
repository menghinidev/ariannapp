import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/firestore.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/i_players_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
IPlayersRepository playersRepository(Ref ref) {
  return FirestorePlayerRepository();
}
