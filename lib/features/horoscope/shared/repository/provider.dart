import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/local_storage/local_storage_service.dart';
import 'package:ariannapp/features/horoscope/shared/repository/sources/horoscope_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
Future<IHoroscopeRepository> horoscopeRepository(Ref ref) async {
  final localStorage = await ref.watch(localStorageServiceProvider.future);
  final dio = ref.watch(networkServiceProvider);
  return HoroscopeRepository(localStorageService: localStorage, httpClient: dio);
}
