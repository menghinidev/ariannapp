import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_horoscope_command.freezed.dart';

@freezed
class GetHoroscopeCommand with _$GetHoroscopeCommand {
  factory GetHoroscopeCommand({
    required HoroscopeSign sign,
  }) = _GetHoroscopeCommand;
}
