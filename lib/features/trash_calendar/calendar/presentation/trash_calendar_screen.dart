import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/trash_calendar/calendar/usecase/get_trash_calendar_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrashCalendarScreen extends ConsumerWidget {
  const TrashCalendarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(trashCalendarProvider.select((e) => e.valueOrNull));
    return BaseAppScreen.sliver(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('Calendario Raccolta'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
          ),
          SliverFillRemaining(
            child: LoadingSwitcher(
              value: calendar,
              margin: DistanceProvider.screenInsets.padding,
              builder: (context, calendar) => ListView.separated(
                padding: DistanceProvider.screenInsets.padding,
                physics: const BouncingScrollPhysics(),
                itemCount: calendar.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(calendar[index].description),
                  dense: false,
                  subtitle: Text(calendar[index].note),
                  leading: Image.network(calendar[index].iconUrl),
                  trailing: Text(calendar[index].date.niceFormat),
                ),
                separatorBuilder: (context, index) => const Divider(height: DistanceProvider.mediumDistance),
              ),
            ),
          ),
        ],
      ),
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
