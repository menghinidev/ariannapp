import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/usecase/validator/use_case_validator.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/add_shelf_item/command/add_shelf_item_command.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/get_shelf/get_shelf_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_shelf_item_use_case.g.dart';

@riverpod
Future<AddShelfItemUseCase> addShelfItemUseCase(Ref ref) async {
  final shelf = await ref.watch(getShelfProvider.future);
  final uniqueValidator = UniqueShelfNameValidator(shelf: shelf);
  final refresh = InvalidateProviderOnSuccessHandler<void, AddShelfItemCommand>(ref: ref, provider: getShelfProvider);
  final showSnackBarError = ShowSnackbarErrorHandler<void, AddShelfItemCommand>(
    contextProvider: (command) => command.context,
  );
  final showSnackBarSuccess = ShowSnackbarSuccessHandler<void, AddShelfItemCommand>(
    contextProvider: (input) => input.context,
    message: 'Elemento aggiunto',
  );
  return AddShelfItemUseCase(
    repo: ref.watch(groceriesRepositoryProvider),
    validators: [uniqueValidator],
    errorHandlers: [showSnackBarError],
    successHandlers: [refresh, showSnackBarSuccess],
  );
}

class AddShelfItemUseCase extends UseCase<void, AddShelfItemCommand> {
  AddShelfItemUseCase({
    required this.repo,
    super.successHandlers,
    super.validators,
    super.errorHandlers,
  });

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(AddShelfItemCommand input) async {
    final check = await checkRequirements();
    final validated = await check.flatMapAsync((_) => validateInput(input));
    validated.ifSuccess((_) => OverlayLoaderManager.instance.showLoader(input.context));
    final response = await validated.flatMapAsync(
      (_) => repo.addShelfItem(
        name: input.name,
        category: input.category,
      ),
    );
    OverlayLoaderManager.instance.hideLoader();
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    await response.ifErrorAsync((_) => applyErrorHandlers(response, input));
    return response;
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
