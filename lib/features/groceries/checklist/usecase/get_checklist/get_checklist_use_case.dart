import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_checklist_use_case.g.dart';

@riverpod
Future<List<GroceriesCheckListItem>> getGroceriesChecklist(GetGroceriesChecklistRef ref) async {
  final usecase = ref.watch(getGroceriesChecklistUseCaseProvider);
  final response = await usecase.call(null);
  return response.toFuture();
}

@riverpod
GetGroceriesChecklistUseCase getGroceriesChecklistUseCase(GetGroceriesChecklistUseCaseRef ref) {
  return GetGroceriesChecklistUseCase(repo: ref.watch(groceriesRepositoryProvider));
}

class GetGroceriesChecklistUseCase extends UseCase<List<GroceriesCheckListItem>, void> {
  GetGroceriesChecklistUseCase({required this.repo});

  final IGroceriesRepository repo;

  @override
  Future<Response<List<GroceriesCheckListItem>, ApplicationError>> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.getGroceriesList());
    return response;
  }
}
