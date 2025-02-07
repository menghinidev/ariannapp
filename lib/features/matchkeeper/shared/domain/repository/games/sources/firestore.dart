import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/games/sources/i_games_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreGamesRepository extends IGamesRepository {
  final instance = FirebaseFirestore.instance;

  @override
  Future<ApplicationResponse<List<Game>>> getGames() async {
    final _ = await instance.collection('game').get();
    return Responses.success<List<Game>, ApplicationError>(<Game>[]);
  }
}
