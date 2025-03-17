import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_checklist_use_case.g.dart';

@riverpod
Future<List<GroceriesCheckListItem>> groceriesChecklist(Ref ref) async {
  final usecase = ref.watch(getGroceriesChecklistUseCaseProvider);
  final response = await usecase.execute(null);
  return response.toFuture();
}

@riverpod
GetGroceriesChecklistUseCase getGroceriesChecklistUseCase(Ref ref) {
  return GetGroceriesChecklistUseCase(repo: ref.watch(groceriesRepositoryProvider));
}

class GetGroceriesChecklistUseCase extends UseCase<List<GroceriesCheckListItem>, void> {
  GetGroceriesChecklistUseCase({required this.repo});

  final IGroceriesRepository repo;

  @override
  Future<Response<List<GroceriesCheckListItem>, ApplicationError>> call(void input) => repo.getGroceriesList();
}
