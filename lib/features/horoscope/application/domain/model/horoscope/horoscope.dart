import 'package:freezed_annotation/freezed_annotation.dart';

part 'horoscope.freezed.dart';

@freezed
class MontlyHoroscope with _$MontlyHoroscope {
  factory MontlyHoroscope({
    required String data,
    required List<DateTime> challengingDays,
    required List<DateTime> standoutDays,
    required DateTime month,
  }) = _MontlyHoroscope;
}

@freezed
class DailyHoroscope with _$DailyHoroscope {
  factory DailyHoroscope({
    required String data,
    required DateTime date,
  }) = _DailyHoroscope;
}

enum HoroscopeSign {
  aries,
  taurus,
  gemini,
  cancer,
  leo,
  virgo,
  libra,
  scorpio,
  sagittarius,
  capricorn,
  aquarius,
  pisces,
}
