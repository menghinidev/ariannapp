import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/players/sources/i_players_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestorePlayerRepository extends IPlayersRepository {
  final instance = FirebaseFirestore.instance;

  static const String playersCollection = 'players';

  @override
  Future<ApplicationResponse<Player>> addPlayer(String name) async {
    try {
      final player = Player(
        id: IDGenerator.generateId,
        name: name,
      );
      await instance.collection(playersCollection).add(player.toFirestore());
      return Responses.success(player);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<ApplicationResponse<List<Player>>> getPlayers() async {
    try {
      final snapshot = await instance.collection(playersCollection).get();
      final players = snapshot.docs.map(Player.fromFirestore).toList();
      return Responses.success(players);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }
}
