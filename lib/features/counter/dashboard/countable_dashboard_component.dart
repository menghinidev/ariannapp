import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CountableDashboardComponent extends StatelessWidget {
  const CountableDashboardComponent({
    required this.data,
    super.key,
  });

  final CountableData data;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: [
          for (final entry in data.timelineEvents.entries)
            BarChartGroupData(
              x: entry.key.hour,
              barRods: [
                BarChartRodData(
                  toY: entry.value.toDouble(),
                ),
              ],
            ),
        ],
      ),
      curve: Curves.easeInCubic,
    );
  }
}

extension on CountableData {
  Map<DateTime, int> get timelineEvents {
    final mapped = <DateTime, int>{};
    for (final event in events) {
      /* final date = event.timestamp.asDate; */
      final date = event.timestamp.copyWith(minute: 0, second: 0);
      if (mapped.containsKey(date)) {
        mapped[date] = mapped[date]! + 1;
      } else {
        mapped[date] = 1;
      }
    }
    return mapped;
  }
}
