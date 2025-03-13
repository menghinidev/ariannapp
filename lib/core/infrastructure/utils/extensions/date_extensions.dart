import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

extension DateTimeFeature on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

class DateFormatterFactory {
  DateFormatterFactory._();

  static final DateFormatterFactory _singleton = DateFormatterFactory._();
  static DateFormatterFactory get instance => _singleton;

  DateFormat get niceDate => DateFormat('dd MMMM yyyy');

  DateFormat get shortDate => DateFormat('dd/MM/yyyy');

  DateFormat get utcDate => DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");

  DateFormat get dayMonthDate => DateFormat('dd/MM');

  DateFormat get dayMonthAndWeekday => DateFormat('EE, dd/MM');

  DateFormat get day => DateFormat('d');

  DateFormat get dayAndWeekday => DateFormat('EEEE d');

  DateFormat get time => DateFormat('kk:mm');

  DateFormat get monthYear => DateFormat('MM/yy');

  DateFormat get niceMonthYear => DateFormat('MMMM yyyy');

  DateFormat get monthYearExtended => DateFormat('MM/yyyy');

  DateFormat get extendedDate => DateFormat('dd MMMM yyyy - kk:mm');

  DateFormat customFormat(String pattern) => DateFormat(pattern);
}

extension DateFormatter on DateTime {
  String get toNiceDate {
    final instance = DateFormatterFactory.instance;
    return instance.niceDate.format(this);
  }

  String get toShortDate {
    final instance = DateFormatterFactory.instance;
    return instance.shortDate.format(this);
  }

  String get toUtcDate {
    final instance = DateFormatterFactory.instance;
    return instance.utcDate.format(this);
  }

  String get toDayMonthDate {
    final instance = DateFormatterFactory.instance;
    return instance.dayMonthDate.format(this);
  }

  String get toDayMonthAndWeekdayDate {
    final instance = DateFormatterFactory.instance;
    return instance.dayMonthAndWeekday.format(this).capitalize;
  }

  String get toDayAndWeekday {
    final instance = DateFormatterFactory.instance;
    return instance.dayAndWeekday.format(this).capitalize;
  }

  String get toTime {
    final instance = DateFormatterFactory.instance;
    return instance.time.format(this);
  }

  String get toMonthYear {
    final instance = DateFormatterFactory.instance;
    return instance.monthYear.format(this);
  }

  String get toNiceMonthYear {
    final instance = DateFormatterFactory.instance;
    return instance.niceMonthYear.format(this).capitalize;
  }

  String get toMonthYearExtended {
    final instance = DateFormatterFactory.instance;
    return instance.monthYearExtended.format(this);
  }

  String get toExtendedDate {
    final instance = DateFormatterFactory.instance;
    return instance.extendedDate.format(this);
  }

  String customFormat(String pattern) => DateFormatterFactory.instance.customFormat(pattern).format(this);

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

extension TimeOfDayFormatter on TimeOfDay {
  String get toTime {
    final instance = DateFormatterFactory.instance;
    final now = DateTime.now();
    final datetime = DateTime(now.year, now.month, now.day, hour, minute);
    return instance.time.format(datetime);
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
