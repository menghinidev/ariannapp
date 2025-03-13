import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';

abstract class ICalendarRepository {
  Future<ApplicationResponse<List<CalendarEvent>>> events({
    required DateTime from,
  });

  Future<EmptyResponse> createEvent({
    required CalendarEventBuilder event,
  });

  Future<EmptyResponse> deleteEvent({
    required String id,
  });
}
