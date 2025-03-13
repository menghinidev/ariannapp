import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendarevent.freezed.dart';
part 'calendarevent.g.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  factory CalendarEvent({
    required String id,
    required String title,
    required String description,
    required DateTime start,
    required DateTime end,
    required bool isWholeDay,
  }) = _CalendarEvent;

  factory CalendarEvent.fromJson(Map<String, dynamic> json) => _$CalendarEventFromJson(json);

  factory CalendarEvent.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;

    return CalendarEvent.fromJson(json);
  }
}

@freezed
class CalendarEventBuilder with _$CalendarEventBuilder {
  factory CalendarEventBuilder({
    required String title,
    required String description,
    required DateTime start,
    required DateTime end,
    required bool isWholeDay,
  }) = _CalendarEventBuilder;

  factory CalendarEventBuilder.fromJson(Map<String, dynamic> json) => _$CalendarEventBuilderFromJson(json);
}
