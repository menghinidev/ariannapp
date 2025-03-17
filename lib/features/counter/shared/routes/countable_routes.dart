import 'package:ariannapp/features/counter/countables/presentation/countables/countables_screen.dart';
import 'package:go_router/go_router.dart';

class CountablesRoutes {
  static const my = 'my-countables';
}

class CountableScreenRoute extends GoRoute {
  CountableScreenRoute()
      : super(
          path: CountablesRoutes.my,
          builder: (context, state) => const CountableScreen(),
        );
}
