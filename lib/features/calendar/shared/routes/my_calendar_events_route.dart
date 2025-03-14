import 'package:ariannapp/features/calendar/my_calendar/presentation/events/calendar_events_screen.dart';
import 'package:go_router/go_router.dart';

class MyCalendarEventsScreenRoute extends GoRoute {
  MyCalendarEventsScreenRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const MyCalendarEventsScreen(),
        );

  static const pagePath = 'my-calendar';
}
