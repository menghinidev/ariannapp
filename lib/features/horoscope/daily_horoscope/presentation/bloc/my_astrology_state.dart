import 'package:ariannapp/features/horoscope/shared/horoscope/horoscope.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_astrology_state.g.dart';

@riverpod
class HoroscopeSignSelector extends _$HoroscopeSignSelector {
  @override
  HoroscopeSign build() {
    return HoroscopeSign.capricorn;
  }

  HoroscopeSign get sign => state;

  set sign(HoroscopeSign sign) => state = sign;
}
