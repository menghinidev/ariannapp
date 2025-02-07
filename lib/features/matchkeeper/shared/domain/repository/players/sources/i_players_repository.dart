import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';

abstract class IPlayersRepository {
  Future<ApplicationResponse<Player>> addPlayer(String name);
  Future<ApplicationResponse<List<Player>>> getPlayers();
  Future<ApplicationResponse<Player>> getPlayer(String id);
}
