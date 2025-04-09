import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/usecase/validator/use_case_validator.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/add_shelf_item/command/add_shelf_item_command.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/get_shelf/get_shelf_use_case.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_shelf_item_use_case.g.dart';

@riverpod
Future<AddShelfItemUseCase> addShelfItemUseCase(Ref ref) async {
  final shelf = await ref.watch(getShelfProvider.future);
  final uniqueValidator = UniqueShelfNameValidator(shelf: shelf);
  final refreshShelf = InvalidateProviderOnSuccessHandler<void, AddShelfItemCommand>(
    ref: ref,
    provider: getShelfProvider,
  );
  final refreshChecklist = InvalidateProviderOnSuccessHandler<void, AddShelfItemCommand>(
    ref: ref,
    provider: groceriesChecklistProvider,
  );
  final showSnackBarError = ShowSnackbarErrorHandler<void, AddShelfItemCommand>(
    contextProvider: (command) => command.context,
  );
  final showSnackBarSuccess = ShowSnackbarSuccessHandler<void, AddShelfItemCommand>(
    contextProvider: (input) => input.context,
    message: 'Elemento aggiunto',
  );
  return AddShelfItemUseCase(
    repo: ref.watch(groceriesRepositoryProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (input) => input.context)],
    validators: [uniqueValidator],
    errorHandlers: [showSnackBarError],
    successHandlers: [refreshShelf, refreshChecklist, showSnackBarSuccess],
  );
}

class AddShelfItemUseCase extends UseCase<void, AddShelfItemCommand> {
  AddShelfItemUseCase({
    required this.repo,
    super.successHandlers,
    super.validators,
    super.errorHandlers,
    super.interceptors,
  });

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(AddShelfItemCommand input) async {
    final itemName = input.name.capitalize;
    final shelfAddResponse = await repo.addShelfItem(name: itemName, category: input.category);
    if (shelfAddResponse.isError) return shelfAddResponse;
    final groceriesResponse = await shelfAddResponse.flatMapAsync((_) => repo.getGroceriesList());
    final groceries = groceriesResponse.payload;
    if (groceriesResponse.isError || groceries == null) return shelfAddResponse;
    groceries.sort((a, b) => a.index.compareTo(b.index));
    final newGroceryIndex = groceries.isEmpty ? 0 : groceries.last.index + 1;
    return repo.addGroceryItem(name: itemName, category: input.category, index: newGroceryIndex);
  }
}

class UniqueShelfNameValidator extends UseCaseValidator<AddShelfItemCommand> {
  UniqueShelfNameValidator({required this.shelf});

  final List<ShelfItem> shelf;

  @override
  Future<EmptyResponse> validate(AddShelfItemCommand input) async {
    final nameSet = shelf.map((e) => e.name.normalize).toSet();
    if (nameSet.contains(input.name.normalize)) {
      final errorMessage = 'Elemento ${input.name} già presente';
      final error = ApplicationError.generic(message: errorMessage);
      return Responses.failure<void, ApplicationError>([error]);
    }
    return Responses.success(null);
  }
}
