import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';

abstract class IGamesRepository {
  Future<ApplicationResponse<List<Game>>> getGames();
}
