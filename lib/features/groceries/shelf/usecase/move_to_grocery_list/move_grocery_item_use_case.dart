import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/bloc/groceries_checklist_bloc.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/move_to_grocery_list/command/movetogrocerylistcommand.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'move_grocery_item_use_case.g.dart';

@riverpod
Future<MoveGroceryItemUseCase> moveGroceryItemUseCase(Ref ref) async {
  final groceries = await ref.watch(groceriesChecklistProvider.future);
  return MoveGroceryItemUseCase(
    groceries: groceries,
    repo: ref.watch(groceriesRepositoryProvider),
    successHandlers: [
      ShowSnackbarSuccessHandler<void, MoveToGroceryListCommand>(
        message: 'Aggiunto alla lista della spesa',
        contextProvider: (input) => input.context,
      ),
      InvalidateProviderOnSuccessHandler<void, MoveToGroceryListCommand>(
        ref: ref,
        provider: groceriesCheckListOrderManagerProvider,
      ),
      InvalidateProviderOnSuccessHandler<void, MoveToGroceryListCommand>(
        ref: ref,
        provider: groceriesChecklistProvider,
      ),
    ],
  );
}

class MoveGroceryItemUseCase extends UseCase<void, MoveToGroceryListCommand> {
  MoveGroceryItemUseCase({
    required this.repo,
    required this.groceries,
    super.successHandlers,
    super.errorHandlers,
  });

  final IGroceriesRepository repo;
  final List<GroceriesCheckListItem> groceries;

  @override
  Future<Response<void, ApplicationError>> call(MoveToGroceryListCommand input) async {
    final check = await checkRequirements();
    final grocery = input.item;
    final response = await check.flatMapAsync(
      (_) => repo.addGroceryItem(
        name: grocery.name,
        category: grocery.category,
        index: groceries.length,
      ),
    );
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }
}
