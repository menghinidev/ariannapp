import 'package:ariannapp/features/counter/shared/repository/sources/firestore.dart';
import 'package:ariannapp/features/counter/shared/repository/sources/i_counter_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
ICounterRepository counterRepository(Ref ref) {
  return FirestoreCounterRepository();
}
