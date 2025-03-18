import 'package:ariannapp/features/counter/countables/presentation/countables/countables_screen.dart';
import 'package:ariannapp/features/counter/dashboard/countable_screen.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:ariannapp/navigation/utils.dart';
import 'package:go_router/go_router.dart';

class CountablesRoutes {
  static const my = 'my-countables';
  static const dashboard = 'countable-dashboard';
}

class CountableScreenRoute extends GoRoute {
  CountableScreenRoute()
      : super(
          path: CountablesRoutes.my,
          routes: [CountableDashboardScreenRoute()],
          builder: (context, state) => const CountableScreen(),
        );
}

class CountableDashboardScreenRoute extends GoRoute {
  CountableDashboardScreenRoute()
      : super(
          path: CountablesRoutes.dashboard,
          redirect: (context, state) => state.checkExtraPresenceOrPop<CountableData>(route: CountablesRoutes.dashboard),
          builder: (context, state) => CountableDashboardScreen(data: state.extra! as CountableData),
        );
}
