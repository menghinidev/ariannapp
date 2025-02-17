import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/daily_horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/daily_horoscope/usecase/command/get_horoscope_command.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:ariannapp/features/horoscope/shared/repository/provider.dart';
import 'package:ariannapp/features/horoscope/shared/repository/sources/horoscope_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_horoscope_use_case.g.dart';

@riverpod
FutureOr<SimpleDailyHoroscope> horoscope(Ref ref) async {
  final sign = ref.watch(horoscopeSignSelectorProvider);
  final date = ref.watch(horoscopeDateSelectorProvider);
  final repo = await ref.watch(horoscopeRepositoryProvider.future);
  final usecase = _GetHoroscopeUseCase(repo: repo);
  final command = GetHoroscopeCommand(sign: sign, date: date);
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
        date: input.date.add(const Duration(hours: 3)),
      ),
    );
    await response.ifErrorAsync((payload) => applyErrorHandlers(response));
    return response;
  }
}
