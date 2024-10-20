import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
import 'package:ariannapp/features/horoscope/application/domain/repository/horoscope_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Horoscope repository unit test',
    () {
      test(
        'Daily API',
        () async {
          final repositoy = HoroscopeRepository();
          final response = await repositoy.dailyHoroscope(sign: HoroscopeSign.aries);
          expect(response.payload, isNotNull);
        },
      );

      test(
        'Montly API',
        () async {
          final repositoy = HoroscopeRepository();
          final response = await repositoy.monthlyHoroscope(sign: HoroscopeSign.aries);
          expect(response.payload, isNotNull);
        },
      );
    },
  );
}
