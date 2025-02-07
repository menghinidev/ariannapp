import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/add_shelf_item/command/add_shelf_item_command.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_shelf_item_use_case.g.dart';

@riverpod
AddShelfItemUseCase addShelfItemUseCase(Ref ref) {
  return AddShelfItemUseCase(repo: ref.watch(groceriesRepositoryProvider));
}

class AddShelfItemUseCase extends UseCase<void, AddShelfItemCommand> {
  AddShelfItemUseCase({required this.repo});

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(AddShelfItemCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repo.addShelfItem(
        name: input.name,
        category: input.category,
      ),
    );
    return response;
  }
}
