import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/horoscope/usecase/command/get_horoscope_command.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:ariannapp/features/horoscope/shared/repository/provider.dart';
import 'package:ariannapp/features/horoscope/shared/repository/sources/horoscope_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_horoscope_use_case.g.dart';

@riverpod
FutureOr<SimpleHoroscope> dailyHoroscope(Ref ref) async {
  final sign = ref.watch(horoscopeSignSelectorProvider);
  final date = ref.watch(horoscopeDateSelectorProvider);
  final repo = await ref.watch(horoscopeRepositoryProvider.future);
  final usecase = _GetDailyHoroscopeUseCase(repo: repo);
  final command = GetHoroscopeCommand(sign: sign, date: date);
  final response = await usecase.call(command);
  return response.toFuture();
}

@riverpod
FutureOr<MonthlyHoroscope> monthlyHoroscope(Ref ref) async {
  final sign = ref.watch(horoscopeSignSelectorProvider);
  final date = ref.watch(horoscopeDateSelectorProvider);
  final repo = await ref.watch(horoscopeRepositoryProvider.future);
  final usecase = _GetMonthlyHoroscopeUseCase(repo: repo);
  final command = GetHoroscopeCommand(sign: sign, date: date);
  final response = await usecase.call(command);
  return response.toFuture();
}

@riverpod
FutureOr<SimpleHoroscope> weeklyHoroscope(Ref ref) async {
  final sign = ref.watch(horoscopeSignSelectorProvider);
  final date = ref.watch(horoscopeDateSelectorProvider);
  final repo = await ref.watch(horoscopeRepositoryProvider.future);
  final usecase = _GetWeeklyHoroscopeUseCase(repo: repo);
  final command = GetHoroscopeCommand(sign: sign, date: date);
  final response = await usecase.call(command);
  return response.toFuture();
}

class _GetDailyHoroscopeUseCase extends UseCase<SimpleHoroscope, GetHoroscopeCommand> {
  _GetDailyHoroscopeUseCase({
    required this.repo,
  });

  final IHoroscopeRepository repo;

  @override
  Future<Response<SimpleHoroscope, ApplicationError>> call(GetHoroscopeCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repo.dailyHoroscope(
        sign: input.sign,
        date: input.date.add(const Duration(hours: 3)),
      ),
    );
    await response.ifErrorAsync((payload) => applyErrorHandlers(response, input));
    return response;
  }
}

class _GetMonthlyHoroscopeUseCase extends UseCase<MonthlyHoroscope, GetHoroscopeCommand> {
  _GetMonthlyHoroscopeUseCase({
    required this.repo,
  });

  final IHoroscopeRepository repo;

  @override
  Future<Response<MonthlyHoroscope, ApplicationError>> call(GetHoroscopeCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repo.monthlyHoroscope(
        sign: input.sign,
      ),
    );
    await response.ifErrorAsync((payload) => applyErrorHandlers(response, input));
    return response;
  }
}

class _GetWeeklyHoroscopeUseCase extends UseCase<SimpleHoroscope, GetHoroscopeCommand> {
  _GetWeeklyHoroscopeUseCase({
    required this.repo,
  });

  final IHoroscopeRepository repo;

  @override
  Future<Response<SimpleHoroscope, ApplicationError>> call(GetHoroscopeCommand input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repo.weeklyHoroscope(
        sign: input.sign,
      ),
    );
    await response.ifErrorAsync((payload) => applyErrorHandlers(response, input));
    return response;
  }
}
