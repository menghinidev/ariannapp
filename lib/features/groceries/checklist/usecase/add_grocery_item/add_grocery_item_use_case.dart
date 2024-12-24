import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/add_grocery_item/command/add_grocery_item_command.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_grocery_item_use_case.g.dart';

@riverpod
AddGroceryItemUseCase addGroceryItemUseCase(AddGroceryItemUseCaseRef ref) {
  return AddGroceryItemUseCase(repo: ref.watch(groceriesRepositoryProvider));
}

class AddGroceryItemUseCase extends UseCase<void, AddGroceryItemCommand> {
  AddGroceryItemUseCase({required this.repo});

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(AddGroceryItemCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repo.addGroceryItem(
        name: input.name,
        category: input.category,
      ),
    );
    return response;
  }
}
