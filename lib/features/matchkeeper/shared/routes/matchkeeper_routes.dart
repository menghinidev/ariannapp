import 'package:ariannapp/features/matchkeeper/dashboard/presentation/matchkeeper_dashboard_screen.dart';
import 'package:ariannapp/features/matchkeeper/new_match/presentation/new_match_screen.dart';
import 'package:go_router/go_router.dart';

class MatchkeeperRoutes {
  static const dashboard = 'matchkeeper-dashboard';
  static const newMatch = '$dashboard/new-match';
}

class _NewMatchScreenRoute extends GoRoute {
  _NewMatchScreenRoute()
      : super(
          path: MatchkeeperRoutes.newMatch,
          builder: (context, state) => const NewMatchScreen(),
        );
}

class MatchkeeperDashboardRoute extends GoRoute {
  MatchkeeperDashboardRoute()
      : super(
          path: MatchkeeperRoutes.dashboard,
          routes: [_NewMatchScreenRoute()],
          builder: (context, state) => const MatchkeeperDashboardScreen(),
        );
}
