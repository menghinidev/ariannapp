import 'package:ariannapp/features/groceries/shared/repositories/sources/firestore.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
IGroceriesRepository groceriesRepository(Ref ref) {
  return FirestoreGroceriesRepository();
}
