import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/provider.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_shelf_use_case.g.dart';

@riverpod
Future<List<ShelfItem>> getShelf(Ref ref) async {
  final usecase = ref.watch(getShelfUseCaseProvider);
  final response = await usecase.call(null);
  return response.toFuture();
}

@riverpod
GetShelfUseCase getShelfUseCase(Ref ref) {
  return GetShelfUseCase(repo: ref.watch(groceriesRepositoryProvider));
}

class GetShelfUseCase extends UseCase<List<ShelfItem>, void> {
  GetShelfUseCase({required this.repo});

  final IGroceriesRepository repo;

  @override
  Future<Response<List<ShelfItem>, ApplicationError>> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.getShelf());
    return response;
  }
}
