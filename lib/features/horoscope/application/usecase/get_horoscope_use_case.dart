import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
import 'package:ariannapp/features/horoscope/application/domain/repository/dto/horoscope/horoscope_dto.dart';
import 'package:ariannapp/features/horoscope/application/domain/repository/horoscope_repository.dart';

class _GetHoroscopeUseCase extends UseCase<DailyHoroscope, void> with HoroscopeDTOMapper {
  _GetHoroscopeUseCase({
    required this.repo,
    required this.sign,
  });

  final IHoroscopeRepository repo;
  final HoroscopeSign sign;

  @override
  Future<Response<DailyHoroscope, ApplicationError>> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.dailyHoroscope(sign: sign));
    return response.map((e) => mapDailyHoroscope(e!));
  }
}
