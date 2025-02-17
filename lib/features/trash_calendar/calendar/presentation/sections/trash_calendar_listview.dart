import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/trash_calendar/calendar/presentation/components/trash_calendar_item.dart';
import 'package:ariannapp/features/trash_calendar/calendar/usecase/get_trash_calendar_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrashCalendarListView extends ConsumerWidget {
  const TrashCalendarListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(trashCalendarProvider.select((e) => e.valueOrNull));
    return SliverFillRemaining(
      child: LoadingSwitcher(
        value: calendar,
        margin: DistanceProvider.screenInsets.padding,
        builder: (context, calendar) => ListView.separated(
          padding: DistanceProvider.screenInsets.padding,
          physics: const BouncingScrollPhysics(),
          itemCount: calendar.length,
          itemBuilder: (context, index) => TrashCalendarItem(
            item: calendar[index],
          ),
          separatorBuilder: (context, index) => const Divider(height: DistanceProvider.mediumDistance),
        ),
      ),
    );
  }
}
