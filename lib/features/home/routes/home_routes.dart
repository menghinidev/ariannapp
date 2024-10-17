import 'package:ariannapp/features/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

class HomeScreenRoute extends GoRoute {
  HomeScreenRoute(List<GoRoute> addictionalRoutes)
      : super(
          path: pagePath,
          routes: addictionalRoutes,
          builder: (context, state) => const HomeScreen(),
        );

  static const pagePath = '/home';
}
