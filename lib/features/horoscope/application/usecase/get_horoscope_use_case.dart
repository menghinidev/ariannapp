import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
import 'package:ariannapp/features/horoscope/application/domain/repository/dto/horoscope/horoscope_dto.dart';
import 'package:ariannapp/features/horoscope/application/domain/repository/provider.dart';
import 'package:ariannapp/features/horoscope/application/domain/repository/sources/horoscope_repository.dart';
import 'package:ariannapp/features/horoscope/application/usecase/command/get_horoscope_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_horoscope_use_case.g.dart';

@riverpod
FutureOr<DailyHoroscope> horoscope(HoroscopeRef ref, HoroscopeSign sign) async {
  final repo = ref.watch(horoscopeRepositoryProvider);
  final usecase = _GetHoroscopeUseCase(repo: repo);
  final command = GetHoroscopeCommand(sign: sign);
  final response = await usecase.call(command);
  return response.toFuture();
}

class _GetHoroscopeUseCase extends UseCase<DailyHoroscope, GetHoroscopeCommand> with HoroscopeDTOMapper {
  _GetHoroscopeUseCase({
    required this.repo,
  });

  final IHoroscopeRepository repo;

  @override
  Future<Response<DailyHoroscope, ApplicationError>> call(GetHoroscopeCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repo.dailyHoroscope(
        sign: input.sign,
      ),
    );
    return response.map((e) => mapDailyHoroscope(e!));
  }
}
