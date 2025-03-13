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
