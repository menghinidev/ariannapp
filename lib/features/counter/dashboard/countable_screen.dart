import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/dashboard/countable_dashboard_component.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:flutter/material.dart';

class CountableDashboardScreen extends StatelessWidget {
  const CountableDashboardScreen({
    required this.data,
    super.key,
  });

  final CountableData data;

  @override
  Widget build(BuildContext context) {
    return BaseAppScreen.sliver(
      title: data.name,
      children: [
        SliverToBoxAdapter(child: CountableDashboardComponent(data: data)),
      ],
    );
  }
}
