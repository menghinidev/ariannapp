import 'package:freezed_annotation/freezed_annotation.dart';

part 'trashcalendardate.freezed.dart';
part 'trashcalendardate.g.dart';

@freezed
class TrashCalendarDateDto with _$TrashCalendarDateDto {
  factory TrashCalendarDateDto({
    @JsonKey(name: 'cdPrgt') required String codice,
    @JsonKey(name: 'date') required int dateInMilliseconds,
    @JsonKey(name: 'desc') required String description,
    @JsonKey(name: 'icon') required String iconUrl,
    required String rgb,
    required String note,
  }) = _TrashCalendarDateDto;

  factory TrashCalendarDateDto.fromJson(Map<String, dynamic> json) => _$TrashCalendarDateDtoFromJson(json);
}

@freezed
class TrashCalendarDate with _$TrashCalendarDate {
  factory TrashCalendarDate({
    required String codice,
    required DateTime date,
    required String description,
    required String iconUrl,
    required String rgb,
    required String note,
  }) = _TrashCalendarDate;
}

extension TrashCalendarDateDtoX on TrashCalendarDateDto {
  TrashCalendarDate toDomain() {
    return TrashCalendarDate(
      codice: codice,
      date: DateTime.fromMillisecondsSinceEpoch(dateInMilliseconds),
      description: description,
      iconUrl: iconUrl,
      rgb: rgb,
      note: note,
    );
  }
}
