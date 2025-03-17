import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/delete_shelf_item/command/deleteshelfitemcommand.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/get_shelf/get_shelf_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_shelf_item_use_case.g.dart';

@riverpod
DeleteShelfItemUseCase deleteShelfItemUseCase(Ref ref) {
  final showSnackbarSuccess = ShowSnackbarSuccessHandler<void, DeleteShelfItemCommand>(
    message: 'Elemento eliminato con successo',
    contextProvider: (input) => input.context,
  );
  final showSnackbarError = ShowSnackbarErrorHandler<void, DeleteShelfItemCommand>(
    contextProvider: (input) => input.context,
  );
  final refresh = InvalidateProviderOnSuccessHandler<void, DeleteShelfItemCommand>(
    ref: ref,
    provider: getShelfProvider,
  );
  return DeleteShelfItemUseCase(
    repo: ref.watch(groceriesRepositoryProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (input) => input.context)],
    successHandlers: [refresh, showSnackbarSuccess],
    errorHandlers: [showSnackbarError],
  );
}

class DeleteShelfItemUseCase extends UseCase<void, DeleteShelfItemCommand> {
  DeleteShelfItemUseCase({
    required this.repo,
    super.successHandlers,
    super.errorHandlers,
    super.interceptors,
  });

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(DeleteShelfItemCommand input) => repo.removeShelfItem(
        item: input.shelf,
      );
}
