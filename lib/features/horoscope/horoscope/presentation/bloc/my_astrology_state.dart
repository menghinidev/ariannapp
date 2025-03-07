import 'package:ariannapp/features/horoscope/horoscope/usecase/my_sign/my_horoscope_sign_controller.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_astrology_state.g.dart';

@riverpod
class HoroscopeSignSelector extends _$HoroscopeSignSelector {
  @override
  FutureOr<HoroscopeSign> build() async {
    final sign = await ref.watch(myHoroscopeSignProvider.future);
    return sign;
  }

  void setSign(HoroscopeSign sign) {
    state = AsyncData(sign);
  }
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
