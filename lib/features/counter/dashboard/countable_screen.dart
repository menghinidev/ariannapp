import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/dashboard/bar_chart/countable_bar_chart_component.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountableDashboardScreen extends ConsumerWidget {
  const CountableDashboardScreen({required this.data, super.key});

  final CountableData data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAppScreen.sliver(
      title: data.name,
      children: [
        EmptyCaseBuilder.sliver(
          isEmpty: data.events.isEmpty,
          title: 'Nessun evento',
          builder:
              (context) => SliverMainAxisGroup(
                slivers: [
                  SliverToBoxAdapter(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: DistanceProvider.screenInsets),
                        child: CountableBarChartComponent(data: data),
                      ),
                    ),
                  ),
                  SliverList.separated(
                    itemCount: data.events.length,
                    separatorBuilder: (context, index) => const Divider(height: DistanceProvider.mediumDistance),
                    itemBuilder:
                        (context, index) => ListTile(
                          leading: CircleAvatar(child: Text((index + 1).toString())),
                          title: Text(data.events[index].timestamp.toExtendedDate),
                        ),
                  ),
                ],
              ),
        ),
      ],
    );
  }
}
