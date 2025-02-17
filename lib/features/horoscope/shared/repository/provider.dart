import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/shared/repository/sources/horoscope_repository.dart';
import 'package:ariannapp/features/horoscope/shared/repository/sources/vercel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
Future<IHoroscopeRepository> horoscopeRepository(Ref ref) async {
  final dio = ref.watch(networkServiceProvider);
  return VercelHoroscopeRepository(httpClient: dio);
}
