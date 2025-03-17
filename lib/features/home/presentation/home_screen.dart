import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/my_calendar/presentation/dashboard/my_calendar_section.dart';
import 'package:ariannapp/features/calendar/shared/routes/my_calendar_events_route.dart';
import 'package:ariannapp/features/counter/shared/routes/countable_routes.dart';
import 'package:ariannapp/features/home/presentation/sections/calendar_dashboard_section.dart';
import 'package:ariannapp/features/home/presentation/sections/groceries_dashboard_section.dart';
import 'package:ariannapp/features/home/presentation/sections/matchkeeper_dashboard_section.dart';
import 'package:ariannapp/features/horoscope/routes/my_astrology_routes.dart';
import 'package:ariannapp/features/profile/routes/profile_routes.dart';
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
      endDrawer: const _HomeDrawer(),
      customTitle: Image.asset(
        'assets/images/handwritten-logo.png',
        height: 56,
        color: Colors.white,
      ),
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

class _HomeDrawer extends ConsumerWidget {
  const _HomeDrawer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Drawer(
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
            bottom: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: SizedBox.expand(
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Color(0xFFb8add3)),
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (!EnvVariable.mode.isLite) ...[
                      ListTile(
                        title: const Text('Oroscopo'),
                        style: ListTileStyle.drawer,
                        leading: const Icon(Icons.stars_outlined),
                        onTap: () => context.goRelative(MyAstrologyScreenRoute.pagePath),
                      ),
                      ListTile(
                        title: const Text('Raccolta differenziata'),
                        style: ListTileStyle.drawer,
                        leading: const Icon(Icons.recycling_outlined),
                        onTap: () => context.goRelative(TrashCalendarScreenRoute.pagePath),
                      ),
                    ],
                    ListTile(
                      title: const Text('Eventi Calendario'),
                      style: ListTileStyle.drawer,
                      leading: const Icon(Icons.calendar_month_outlined),
                      onTap: () => context.goRelative(MyCalendarEventsScreenRoute.pagePath),
                    ),
                    ListTile(
                      title: const Text('Contatori'),
                      style: ListTileStyle.drawer,
                      leading: const Icon(Icons.numbers_outlined),
                      onTap: () => context.goRelative(CountablesRoutes.my),
                    ),
                    ListTile(
                      title: const Text('Profilo'),
                      style: ListTileStyle.drawer,
                      leading: const Icon(Icons.person_outlined),
                      onTap: () => context.goRelative(ProfileScreenRoute.pagePath),
                    ),
                    ListTile(
                      title: const Text('Impostazioni'),
                      style: ListTileStyle.drawer,
                      leading: const Icon(Icons.settings_outlined),
                      onTap: () => context.goRelative(SettingsScreenRoute.pagePath),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
