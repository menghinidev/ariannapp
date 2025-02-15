import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_checklist_order_use_case.g.dart';

@riverpod
UpdateCheckListOrderUseCase updateCheckListOrderUseCase(Ref ref) {
  return UpdateCheckListOrderUseCase(
    repo: ref.watch(groceriesRepositoryProvider),
    successHandlers: [
      InvalidateProviderOnSuccessHandler(
        ref: ref,
        provider: groceriesChecklistProvider,
      ),
    ],
  );
}

class UpdateCheckListOrderUseCase extends UseCase<void, List<GroceriesCheckListItem>> {
  UpdateCheckListOrderUseCase({
    required this.repo,
    super.successHandlers,
  });

  final IGroceriesRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(List<GroceriesCheckListItem> input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.reorder(items: input));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }
}
