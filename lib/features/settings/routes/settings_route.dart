import 'package:ariannapp/features/settings/settings_screen.dart';
import 'package:go_router/go_router.dart';

class SettingsScreenRoute extends GoRoute {
  SettingsScreenRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const SettingsScreen(),
        );

  static const pagePath = 'settings';
}
