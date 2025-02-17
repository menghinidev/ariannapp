import 'package:ariannapp/features/trash_calendar/calendar/presentation/trash_calendar_screen.dart';
import 'package:go_router/go_router.dart';

class TrashCalendarScreenRoute extends GoRoute {
  TrashCalendarScreenRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const TrashCalendarScreen(),
        );

  static const pagePath = 'trash-calendar';
}
