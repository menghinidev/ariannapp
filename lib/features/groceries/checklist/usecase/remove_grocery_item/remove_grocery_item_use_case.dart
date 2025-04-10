import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/bloc/groceries_checklist_bloc.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
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
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (input) => input.context)],
    successHandlers: [
      ShowSnackbarSuccessHandler(
        message: 'Rimosso dalla lista della spesa',
        contextProvider: (input) => input.context,
      ),
      InvalidateProviderOnSuccessHandler(
        ref: ref,
        provider: groceriesCheckListOrderManagerProvider,
      ),
      InvalidateProviderOnSuccessHandler(
        ref: ref,
        provider: groceriesChecklistProvider,
      ),
    ],
  );
}

class RemoveGroceryItemUseCase extends UseCase<void, RemoveGroceryItemCommand> {
  RemoveGroceryItemUseCase({
    required this.repo,
    super.successHandlers,
    super.interceptors,
  });

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(RemoveGroceryItemCommand input) => repo.removeGroceryItem(
        item: input.item,
      );
}
