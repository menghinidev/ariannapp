import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/shared/model/builder/calendareventbuilder.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:ariannapp/features/calendar/shared/repository/sources/calendar_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreCalendarRepository with RepositorySafeInvoker implements ICalendarRepository {
  final instance = FirebaseFirestore.instance;
  static const String matchCollection = 'calendar';

  @override
  Future<ApplicationResponse<List<CalendarEvent>>> events({required DateTime from}) {
    // TODO(dev): Implement filtration by date
    return safeInvoke<List<CalendarEvent>, QuerySnapshot<Map<String, dynamic>>>(
      request: () => instance.collection(matchCollection).get(),
      payloadMapper: (snapshot) => snapshot.docs.map(CalendarEvent.fromFirestore).toList(),
    );
  }

  @override
  Future<EmptyResponse> createEvent({required CalendarEventBuilder event}) {
    return safeInvoke<void, DocumentReference<Map<String, dynamic>>>(
      request: () => instance.collection(matchCollection).add(event.toFirebaseJson()),
      payloadMapper: (ref) {},
    );
  }

  @override
  Future<EmptyResponse> deleteEvent({required String id}) {
    return safeInvoke<void, void>(
      request: () => instance.collection(matchCollection).doc(id).delete(),
      payloadMapper: (_) {},
    );
  }
}
