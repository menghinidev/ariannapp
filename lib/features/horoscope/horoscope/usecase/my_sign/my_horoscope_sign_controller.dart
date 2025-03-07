import 'package:ariannapp/core/infrastructure/utils/local_storage/local_storage_service.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_horoscope_sign_controller.g.dart';

@riverpod
class MyHoroscopeSign extends _$MyHoroscopeSign {
  @override
  FutureOr<HoroscopeSign> build() async {
    const defaultValue = HoroscopeSign.capricorn;
    final localStorage = await ref.watch(localStorageServiceProvider.future);
    final sign = await localStorage.horoscopeSign;
    if (sign == null) return defaultValue;
    final parsed = HoroscopeSign.values.firstWhere((e) => e.name == sign, orElse: () => defaultValue);
    return parsed;
  }

  Future<void> changeMySign(HoroscopeSign sign) async {
    final localStorage = await ref.read(localStorageServiceProvider.future);
    await localStorage.saveHoroscopeSign(sign.name);
    state = AsyncData(sign);
  }
}
