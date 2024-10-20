import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
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

@riverpod
class HoroscopeDateSelector extends _$HoroscopeDateSelector {
  @override
  DateTime build() {
    return DateTime.now();
  }

  DateTime get date => state;

  set date(DateTime date) => state = date;
}
