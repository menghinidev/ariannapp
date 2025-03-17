import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/update_order/command/updategrocerieslistordercommand.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_checklist_order_use_case.g.dart';

@riverpod
UpdateCheckListOrderUseCase updateCheckListOrderUseCase(Ref ref) {
  return UpdateCheckListOrderUseCase(
    repo: ref.watch(groceriesRepositoryProvider),
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (input) => input.context)],
    successHandlers: [
      InvalidateProviderOnSuccessHandler(
        ref: ref,
        provider: groceriesChecklistProvider,
      ),
    ],
  );
}

class UpdateCheckListOrderUseCase extends UseCase<void, UpdateGroceriesListOrderCommand> {
  UpdateCheckListOrderUseCase({
    required this.repo,
    super.successHandlers,
    super.interceptors,
  });

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(UpdateGroceriesListOrderCommand input) => repo.reorder(
        items: input.items,
      );
}
