import 'package:ariannapp/features/horoscope/application/domain/repository/sources/horoscope_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
IHoroscopeRepository horoscopeRepository(HoroscopeRepositoryRef ref) {
  return HoroscopeRepository();
}
