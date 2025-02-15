import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/repository/invoker.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/i_games_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreGamesRepository extends IGamesRepository with RepositorySafeInvoker {
  final instance = FirebaseFirestore.instance;

  @override
  Future<ApplicationResponse<List<Game>>> getGames() async {
    return safeInvoke(
      request: () => instance.collection('game').get(),
      payloadMapper: (payload) => payload.docs.map(Game.fromFirestore).toList(),
    );
  }
}
