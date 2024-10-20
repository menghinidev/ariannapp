import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'horoscope_dto.freezed.dart';
part 'horoscope_dto.g.dart';

@freezed
class MontlyHoroscopeDTO with _$MontlyHoroscopeDTO {
  @JsonSerializable(explicitToJson: true)
  factory MontlyHoroscopeDTO({
    @JsonKey(name: 'horoscope_data') required String data,
    @JsonKey(name: 'challenging_days') required String challengingDays,
    @JsonKey(name: 'standout_days') required String standoutDays,
    @_MonthDateConverter() required DateTime month,
  }) = _MontlyHoroscopeDTO;

  factory MontlyHoroscopeDTO.fromJson(Map<String, Object?> json) => _$MontlyHoroscopeDTOFromJson(json);
}

@freezed
class DailyHoroscopeDTO with _$DailyHoroscopeDTO {
  @JsonSerializable(explicitToJson: true)
  factory DailyHoroscopeDTO({
    @JsonKey(name: 'horoscope_data') required String data,
    @_DailyDateConverter() required DateTime date,
  }) = _DailyHoroscopeDTO;

  factory DailyHoroscopeDTO.fromJson(Map<String, Object?> json) => _$DailyHoroscopeDTOFromJson(json);
}

class _DailyDateConverter implements JsonConverter<DateTime, String> {
  const _DailyDateConverter();

  @override
  DateTime fromJson(String json) {
    return DateFormat.yMMMd('en_US').parse(json);
  }

  @override
  String toJson(DateTime json) => DateFormat.yMMMd().format(json);
}

class _MonthDateConverter implements JsonConverter<DateTime, String> {
  const _MonthDateConverter();

  @override
  DateTime fromJson(String json) {
    return DateFormat.yMMMM('en_US').parse(json);
  }

  @override
  String toJson(DateTime json) => DateFormat.yMMMM('en_US').format(json);
}

mixin HoroscopeDTOMapper {
  DailyHoroscope mapDailyHoroscope(DailyHoroscopeDTO dto) {
    return DailyHoroscope(
      data: dto.data,
      date: dto.date,
    );
  }

  MontlyHoroscope mapMontlyHoroscope(MontlyHoroscopeDTO dto) {
    return MontlyHoroscope(
      data: dto.data,
      challengingDays: dto.challengingDays.split(',').map((e) => DateFormat.yMMMd().parse(e)).toList(),
      standoutDays: dto.standoutDays.split(',').map((e) => DateFormat.yMMMd().parse(e)).toList(),
      month: dto.month,
    );
  }
}
