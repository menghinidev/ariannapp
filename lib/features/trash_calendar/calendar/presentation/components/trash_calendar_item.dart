import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/trash_calendar/shared/model/trashcalendardate.dart';
import 'package:flutter/material.dart';

class TrashCalendarItem extends StatelessWidget {
  const TrashCalendarItem({
    required this.item,
    super.key,
  });

  final TrashCalendarDate item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.description),
      dense: false,
      subtitle: Text(item.note),
      leading: Image.network(item.iconUrl),
      trailing: Text(item.date.niceFormat),
    );
  }
}

extension on DateTime {
  String get niceFormat {
    final today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final tomorrow = today.add(const Duration(days: 1));
    if (this == today) return 'Oggi';
    if (this == tomorrow) return 'Domani';
    return toDayMonthDate;
  }
}
