import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendarevent.freezed.dart';
part 'calendarevent.g.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  factory CalendarEvent({
    required String id,
    required String title,
    required DateTime datetime,
    required bool isWholeDay,
    @Default(EventCategory.generic) EventCategory category,
    @Default(<EventTag>[]) List<EventTag> tags,
    String? description,
  }) = _CalendarEvent;

  factory CalendarEvent.fromJson(Map<String, dynamic> json) => _$CalendarEventFromJson(json);

  factory CalendarEvent.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;

    return CalendarEvent.fromJson(json);
  }
}

enum EventCategory {
  appointment,
  expiration,
  generic,
}

extension EventCategoryFormatter on EventCategory {
  String get formatName {
    switch (this) {
      case EventCategory.appointment:
        return 'Appuntamento';
      case EventCategory.expiration:
        return 'Scadenza';
      case EventCategory.generic:
        return 'Generico';
    }
  }
}

enum EventTag {
  car,
  house,
  work,
  personal,
}

extension EventTagFormatter on EventTag {
  String get formatName {
    switch (this) {
      case EventTag.car:
        return 'Auto';
      case EventTag.house:
        return 'Casa';
      case EventTag.work:
        return 'Lavoro';
      case EventTag.personal:
        return 'Personale';
    }
  }
}
