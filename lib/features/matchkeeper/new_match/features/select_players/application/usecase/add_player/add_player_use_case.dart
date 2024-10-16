import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/application/usecase/add_player/command/addplayercommand.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_player_use_case.g.dart';

@riverpod
AddPlayerUseCase addPlayerUseCase(AddPlayerUseCaseRef ref) {
  return AddPlayerUseCase();
}

class AddPlayerUseCase extends UseCase<Player, AddPlayerCommand> {
  @override
  Future<Response<Player, ApplicationError>> call(AddPlayerCommand input) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
