import 'package:ariannapp/features/profile/presentation/profile_screen.dart';
import 'package:go_router/go_router.dart';

class ProfileScreenRoute extends GoRoute {
  ProfileScreenRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const ProfileScreen(),
        );

  static String pagePath = 'profile';
}
