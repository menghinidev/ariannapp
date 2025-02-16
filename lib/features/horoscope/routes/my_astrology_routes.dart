import 'package:ariannapp/features/horoscope/daily_horoscope/presentation/my_astrology_screen.dart';
import 'package:go_router/go_router.dart';

class MyAstrologyScreenRoute extends GoRoute {
  MyAstrologyScreenRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const MyAstrologyScreen(),
        );

  static const pagePath = 'astrology';
}
