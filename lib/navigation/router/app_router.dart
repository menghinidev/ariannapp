import 'package:ariannapp/features/calendar/shared/routes/my_calendar_events_route.dart';
import 'package:ariannapp/features/counter/shared/routes/countable_routes.dart';
import 'package:ariannapp/features/groceries/shared/routes/shelf_routes.dart';
import 'package:ariannapp/features/home/routes/home_routes.dart';
import 'package:ariannapp/features/horoscope/routes/my_astrology_routes.dart';
import 'package:ariannapp/features/login/login_screen.dart';
import 'package:ariannapp/features/matchkeeper/shared/routes/matchkeeper_routes.dart';
import 'package:ariannapp/features/settings/routes/settings_route.dart';
import 'package:ariannapp/features/trash_calendar/routes/trash_calendar_routes.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:ariannapp/navigation/notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  final key = ref.watch(navigatorKeyProvider);
  final notifier = ref.watch(routerNotifierProvider.notifier);
  return GoRouter(
    navigatorKey: key,
    initialLocation: LoginScreenRoute.pagePath,
    refreshListenable: notifier,
    redirect: notifier.redirect,
    routes: [
      LoginScreenRoute(),
      HomeScreenRoute([
        CountableScreenRoute(),
        TrashCalendarScreenRoute(),
        MatchkeeperDashboardRoute(),
        SettingsScreenRoute(),
        MyAstrologyScreenRoute(),
        GroceriesShelfScreenRoute(),
        GroceriesCheckListScreenRoute(),
        MyCalendarEventsScreenRoute(),
      ]),
    ],
  );
}
