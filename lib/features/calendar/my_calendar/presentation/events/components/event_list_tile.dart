import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarEventListTile extends ConsumerWidget {
  const CalendarEventListTile({
    required this.event,
    this.trailing,
    super.key,
  });

  final CalendarEvent event;
  final Widget? trailing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(event.title),
          contentPadding: EdgeInsets.zero,
          trailing: trailing,
          subtitle: Text(event.isWholeDay ? event.datetime.toNiceDate : event.datetime.toExtendedDate),
        ),
        if (event.tags.isNotEmpty) ...[
          Wrap(
            spacing: DistanceProvider.smallDistance,
            runSpacing: DistanceProvider.smallDistance,
            children: [
              for (final tag in event.tags)
                Chip(
                  label: Text(
                    tag.formatName,
                    style: context.textTheme.bodySmall?.copyWith(color: context.colorScheme.onTertiary),
                  ),
                  backgroundColor: context.colorScheme.tertiary,
                ),
            ],
          ),
        ],
      ],
    );
  }
}
