import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_horoscope_command.freezed.dart';

@freezed
class GetHoroscopeCommand with _$GetHoroscopeCommand {
  factory GetHoroscopeCommand({
    required HoroscopeSign sign,
    required DateTime date,
  }) = _GetHoroscopeCommand;
}
