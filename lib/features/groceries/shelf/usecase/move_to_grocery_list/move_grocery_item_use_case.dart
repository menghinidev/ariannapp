import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'move_grocery_item_use_case.g.dart';

@riverpod
MoveGroceryItemUseCase moveGroceryItemUseCase(MoveGroceryItemUseCaseRef ref) {
  return MoveGroceryItemUseCase(repo: ref.watch(groceriesRepositoryProvider));
}

class MoveGroceryItemUseCase extends UseCase<void, ShelfItem> {
  MoveGroceryItemUseCase({required this.repo});

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(ShelfItem input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.addGroceryItem(name: input.name, category: input.category));
    return response;
  }
}
