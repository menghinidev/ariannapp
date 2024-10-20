import 'package:ariannapp/features/home/routes/home_routes.dart';
import 'package:ariannapp/features/horoscope/routes/my_astrology_routes.dart';
import 'package:ariannapp/features/matchkeeper/shared/routes/matchkeeper_routes.dart';
import 'package:ariannapp/features/settings/routes/settings_route.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      HomeScreenRoute([
        MatchkeeperDashboardRoute(),
        SettingsScreenRoute(),
        MyAstrologyScreenRoute(),
      ]),
    ],
  );
}
