import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/my_calendar/presentation/dashboard/my_calendar_section.dart';
import 'package:ariannapp/features/calendar/shared/routes/my_calendar_events_route.dart';
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
      title: 'AriannApp',
      customTitle: Image.asset(
        'assets/images/handwritten-logo.png',
        height: 56,
        color: Colors.white,
      ),
      actions: [
        if (!EnvVariable.mode.isLite) ...[
          IconButton.filled(
            onPressed: () => context.goRelative(MyAstrologyScreenRoute.pagePath),
            icon: const Icon(Icons.stars_outlined),
          ),
          IconButton.filled(
            onPressed: () => context.goRelative(TrashCalendarScreenRoute.pagePath),
            icon: const Icon(Icons.recycling_outlined),
          ),
        ],
        IconButton.filled(
          onPressed: () => context.goRelative(MyCalendarEventsScreenRoute.pagePath),
          icon: const Icon(Icons.calendar_month_outlined),
        ),
        IconButton.filled(
          onPressed: () => context.goRelative(SettingsScreenRoute.pagePath),
          icon: const Icon(Icons.settings_outlined),
        ),
      ],
      children: [
        const SliverToBoxAdapter(child: MyCalendarSection()),
        SliverToBoxAdapter(child: DistanceProvider.mediumDistance.spacer()),
        if (!EnvVariable.mode.isLite) ...[
          const SliverToBoxAdapter(child: CalendarDashboardSection()),
          SliverToBoxAdapter(child: DistanceProvider.mediumDistance.spacer()),
        ],
        const SliverToBoxAdapter(child: GroceriesDashboardSection()),
        SliverToBoxAdapter(child: DistanceProvider.mediumDistance.spacer()),
        const SliverToBoxAdapter(child: MatchkeeperDashboardSection()),
        SliverToBoxAdapter(child: DistanceProvider.mediumDistance.spacer()),
      ],
    );
  }
}
