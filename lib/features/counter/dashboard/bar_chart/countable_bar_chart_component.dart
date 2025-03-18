import 'dart:math';

import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CountableBarChartComponent extends StatelessWidget {
  const CountableBarChartComponent({required this.data, super.key});

  final CountableData data;

  @override
  Widget build(BuildContext context) {
    final maxValue = data.groupedByDate.values.reduce((a, b) => a > b ? a : b).toDouble();
    return BarChart(
      BarChartData(
        maxY: max((maxValue * 1.5).roundToDouble(), 5),
        gridData: const FlGridData(drawVerticalLine: false, horizontalInterval: 1),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(sideTitles: SideTitles(getTitlesWidget: _getTitles, showTitles: true)),
          topTitles: const AxisTitles(),
        ),
        barGroups: [
          for (final entry in data.groupedByDate.entries)
            BarChartGroupData(
              x: entry.key.millisecondsSinceEpoch,
              barRods: [BarChartRodData(toY: entry.value.toDouble())],
            ),
        ],
      ),
      curve: Curves.easeInCubic,
    );
  }

  Widget _getTitles(double value, TitleMeta meta) {
    return Text(DateTime.fromMillisecondsSinceEpoch(value.toInt()).toDayMonthDate);
  }
}
