import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/i_players_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestorePlayerRepository extends IPlayersRepository with RepositorySafeInvoker {
  final instance = FirebaseFirestore.instance;

  static const String playersCollection = 'players';

  @override
  Future<ApplicationResponse<Player>> addPlayer(String name) {
    final player = Player(id: IDGenerator.generateId, name: name);
    return safeInvoke(
      request: () => instance.collection(playersCollection).add(player.toFirestore()),
      payloadMapper: (response) => player.copyWith(id: response.id),
    );
  }

  @override
  Future<ApplicationResponse<List<Player>>> getPlayers() {
    return safeInvoke(
      request: () => instance.collection(playersCollection).get(),
      payloadMapper: (payload) => payload.docs.map(Player.fromFirestore).toList(),
    );
  }

  @override
  Future<ApplicationResponse<Player>> getPlayer(String id) {
    return safeInvoke(
      request: () => instance.collection(playersCollection).doc(id).get(),
      payloadMapper: Player.fromFirestoreDoc,
    );
  }
}
