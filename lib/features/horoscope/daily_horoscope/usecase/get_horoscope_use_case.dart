import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/core/infrastructure/usecase/use_case.dart';
import 'package:ariannapp/core/infrastructure/utils/response/response.dart';
import 'package:ariannapp/features/horoscope/daily_horoscope/usecase/command/get_horoscope_command.dart';
import 'package:ariannapp/features/horoscope/shared/horoscope/horoscope.dart';
import 'package:ariannapp/features/horoscope/shared/repository/provider.dart';
import 'package:ariannapp/features/horoscope/shared/repository/sources/horoscope_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_horoscope_use_case.g.dart';

@riverpod
FutureOr<SimpleDailyHoroscope> horoscope(Ref ref, HoroscopeSign sign) async {
  final repo = await ref.watch(horoscopeRepositoryProvider.future);
  final usecase = _GetHoroscopeUseCase(repo: repo);
  final command = GetHoroscopeCommand(sign: sign);
  final response = await usecase.call(command);
  return response.toFuture();
}

class _GetHoroscopeUseCase extends UseCase<SimpleDailyHoroscope, GetHoroscopeCommand> {
  _GetHoroscopeUseCase({
    required this.repo,
  });

  final IHoroscopeRepository repo;

  @override
  Future<Response<SimpleDailyHoroscope, ApplicationError>> call(GetHoroscopeCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repo.dailyHoroscope(
        sign: input.sign,
      ),
    );
    return response;
  }
}
