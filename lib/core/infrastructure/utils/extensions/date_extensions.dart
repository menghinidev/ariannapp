import 'package:intl/intl.dart';

extension DateFormatter on DateTime {
  String get toShortDate => DateFormat('dd/MM/yyyy').format(this);

  String get toUtcDate => DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(this);

  String get toDayMonthDate => DateFormat('dd/MM').format(this);

  String get toHourDate => DateFormat('kk:mm').format(this);

  String get toMonthYear => DateFormat('MM/yy').format(this);

  String get toMonthYearExtended => DateFormat('MM/yyyy').format(this);

  String get toExtendedDate => DateFormat('dd MMMM yyyy - kk:mm', 'it-IT').format(this);
}

extension DateFormatterExt on String {
  DateTime? get getShortDate => DateFormat('MM/dd/yy').tryParse(this);
  DateTime? get getMonthYearDateExtended => DateFormat('MM/yyyy').tryParse(this);
  DateTime? get getYearDateExtended => DateFormat('yyyy').tryParse(this);
}
