import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CountableGraphChartComponent extends StatelessWidget {
  const CountableGraphChartComponent({required this.data, super.key});

  final CountableData data;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: [
              for (final entry in data.timelineEvents.entries)
                FlSpot(entry.key.millisecondsSinceEpoch.toDouble(), entry.value.toDouble()),
            ],
          ),
        ],
      ),
    );
  }
}

extension on CountableData {
  Map<DateTime, int> get timelineEvents {
    final timeline = groupedByDate;
    final events = <DateTime, int>{};
    for (final (index, entry) in timeline.entries.indexed) {
      final count = subTotal(timeline, index);
      events[entry.key] = count;
    }
    return events;
  }
}
