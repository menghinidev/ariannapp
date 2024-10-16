import 'package:ariannapp/features/matchkeeper/new_match/presentation/new_match_screen.dart';
import 'package:go_router/go_router.dart';

class NewMatchScreenRoute extends GoRoute {
  NewMatchScreenRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const NewMatchScreen(),
        );

  static const pagePath = 'new-match';
}
