import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

extension DateFormatter on DateTime {
  String get toShortDate => DateFormat('dd/MM/yyyy').format(this);

  String get toUtcDate => DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(this);

  String get toDayMonthDate => DateFormat('dd/MM').format(this);

  String get toHourDate => DateFormat('kk:mm').format(this);

  String get toMonthYear => DateFormat('MM/yy').format(this);

  String get toMonthYearExtended => DateFormat('MM/yyyy').format(this);

  String get toExtendedDate => DateFormat('dd MMMM yyyy - kk:mm', 'it-IT').format(this);

  DateTime copyWith({int? year, int? month, int? day}) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour,
      minute,
      second,
    );
  }
}

extension DateFormatterExt on String {
  DateTime? get getShortDate => DateFormat('MM/dd/yy').tryParse(this);
  DateTime? get getMonthYearDateExtended => DateFormat('MM/yyyy').tryParse(this);
  DateTime? get getYearDateExtended => DateFormat('yyyy').tryParse(this);
}

class YYYYMMDDConverter implements JsonConverter<DateTime, String> {
  const YYYYMMDDConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime json) => DateFormat('yyyy-MM-dd').format(json);
}
