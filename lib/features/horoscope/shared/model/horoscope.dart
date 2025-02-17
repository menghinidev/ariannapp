import 'package:freezed_annotation/freezed_annotation.dart';

part 'horoscope.freezed.dart';

@freezed
class SimpleHoroscope with _$SimpleHoroscope {
  factory SimpleHoroscope({
    required HoroscopeSign sign,
    required DateTime date,
    required String prediction,
  }) = _SimpleHoroscope;
}

@freezed
class MonthlyHoroscope with _$MonthlyHoroscope {
  factory MonthlyHoroscope({
    required SimpleHoroscope data,
    required List<DateTime> standoutDays,
    required List<DateTime> challengingDays,
  }) = _MonthlyHoroscope;
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
