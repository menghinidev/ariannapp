import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/trash_calendar/shared/model/trashcalendardate.dart';
import 'package:flutter/material.dart';

class TrashCalendarItem extends StatelessWidget {
  const TrashCalendarItem({
    required this.item,
    required this.isThreeLine,
    super.key,
  });

  final TrashCalendarDate item;
  final bool isThreeLine;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        item.iconUrl,
        height: 40,
      ),
      title: Text(item.description),
      subtitle: Text(item.note),
      titleTextStyle: context.textTheme.bodyLarge,
      subtitleTextStyle: context.textTheme.bodySmall,
      leadingAndTrailingTextStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      trailing: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 64),
        child: Text(
          item.date.niceFormat,
          textAlign: TextAlign.center,
          softWrap: true,
        ),
      ),
    );
  }
}

extension on DateTime {
  String get niceFormat {
    final today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final tomorrow = today.add(const Duration(days: 1));
    if (this == today) return 'Questa mattina';
    if (this == tomorrow) return 'Domani mattina';
    return toDayMonthAndWeekdayDate;
  }
}
