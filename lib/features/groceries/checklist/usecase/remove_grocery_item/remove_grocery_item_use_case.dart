import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/command/removegroceryitemcommand.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remove_grocery_item_use_case.g.dart';

@riverpod
RemoveGroceryItemUseCase removeGroceryItemUseCase(Ref ref) {
  return RemoveGroceryItemUseCase(
    repo: ref.watch(groceriesRepositoryProvider),
    successHandlers: [
      ShowSnackbarSuccessHandler<void, RemoveGroceryItemCommand>(
        message: 'Rimosso dalla lista della spesa',
        contextProvider: (input) => input.context,
      ),
    ],
  );
}

class RemoveGroceryItemUseCase extends UseCase<void, RemoveGroceryItemCommand> {
  RemoveGroceryItemUseCase({
    required this.repo,
    super.successHandlers,
  });

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(RemoveGroceryItemCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.removeGroceryItem(name: input.name));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }
}
