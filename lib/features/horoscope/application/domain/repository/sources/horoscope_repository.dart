import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
import 'package:ariannapp/features/horoscope/application/domain/repository/dto/horoscope/horoscope_dto.dart';
import 'package:dio/dio.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

abstract class IHoroscopeRepository {
  Future<ApplicationResponse<DailyHoroscopeDTO>> dailyHoroscope({
    required HoroscopeSign sign,
    required DateTime date,
  });
  Future<ApplicationResponse<MontlyHoroscopeDTO>> monthlyHoroscope({required HoroscopeSign sign});
}

class HoroscopeRepository extends IHoroscopeRepository {
  final basePath = 'https://horoscope-app-api.vercel.app/api/v1/get-horoscope';

  final httpClient = Dio();

  @override
  Future<ApplicationResponse<DailyHoroscopeDTO>> dailyHoroscope({
    required HoroscopeSign sign,
    required DateTime date,
  }) async {
    try {
      final queryParameters = {
        'sign': sign.name.capitalize,
        'day': date.customFormat('yyyy-MM-dd'),
      };
      final response = await httpClient.get<Map<String, dynamic>>(
        '$basePath/daily',
        queryParameters: queryParameters,
      );
      final failure = Responses.failure<DailyHoroscopeDTO, ApplicationError>();
      final status = response.statusCode;
      if (status == null) return failure;
      if (status >= 400) return failure;
      final data = response.data;
      if (data == null) return failure;
      final payload = data['data'];
      final mappedDto = DailyHoroscopeDTO.fromJson(payload as Map<String, dynamic>);
      return Responses.success(mappedDto);
    } catch (e) {
      return Responses.failure<DailyHoroscopeDTO, ApplicationError>();
    }
  }

  @override
  Future<ApplicationResponse<MontlyHoroscopeDTO>> monthlyHoroscope({required HoroscopeSign sign}) async {
    try {
      final response = await httpClient.get<Map<String, dynamic>>(
        '$basePath/monthly',
        queryParameters: {'sign': sign.name.capitalize},
      );
      final failure = Responses.failure<MontlyHoroscopeDTO, ApplicationError>();
      final status = response.statusCode;
      if (status == null) return failure;
      if (status >= 400) return failure;
      final data = response.data;
      if (data == null) return failure;
      final payload = data['data'];
      final mappedDto = MontlyHoroscopeDTO.fromJson(payload as Map<String, dynamic>);
      return Responses.success(mappedDto);
    } catch (e) {
      return Responses.failure<MontlyHoroscopeDTO, ApplicationError>();
    }
  }
}
