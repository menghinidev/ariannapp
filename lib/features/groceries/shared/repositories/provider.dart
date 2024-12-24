import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/mock_groceries_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
IGroceriesRepository groceriesRepository(GroceriesRepositoryRef ref) {
  return MockGroceriesRepository();
}
