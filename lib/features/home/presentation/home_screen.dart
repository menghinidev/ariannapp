import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/home/presentation/sections/calendar_dashboard_section.dart';
import 'package:ariannapp/features/home/presentation/sections/groceries_dashboard_section.dart';
import 'package:ariannapp/features/home/presentation/sections/matchkeeper_dashboard_section.dart';
import 'package:ariannapp/features/horoscope/routes/my_astrology_routes.dart';
import 'package:ariannapp/features/settings/routes/settings_route.dart';
import 'package:ariannapp/features/trash_calendar/routes/trash_calendar_routes.dart';
import 'package:ariannapp/navigation/entrypoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAppScreen.sliver(
      child: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            title: const Text(
              'AriannApp',
            ),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
            actions: [
              IconButton.filled(
                onPressed: () => context.goRelative(MyAstrologyScreenRoute.pagePath),
                icon: const Icon(Icons.public),
              ),
              IconButton.filled(
                onPressed: () => context.goRelative(TrashCalendarScreenRoute.pagePath),
                icon: const Icon(Icons.calendar_month_outlined),
              ),
              IconButton.filled(
                onPressed: () => context.goRelative(SettingsScreenRoute.pagePath),
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
          ),
          const SliverToBoxAdapter(child: CalendarDashboardSection()),
          SliverToBoxAdapter(child: DistanceProvider.mediumDistance.spacer()),
          const SliverToBoxAdapter(child: MatchkeeperDashboardSection()),
          SliverToBoxAdapter(child: DistanceProvider.mediumDistance.spacer()),
          const SliverToBoxAdapter(child: GroceriesDashboardSection()),
        ],
      ),
    );
  }
}
