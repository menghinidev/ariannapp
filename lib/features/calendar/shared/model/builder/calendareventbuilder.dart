import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendareventbuilder.freezed.dart';

@freezed
class CalendarEventBuilder with _$CalendarEventBuilder {
  factory CalendarEventBuilder({
    String? title,
    String? description,
    DateTime? day,
    TimeOfDay? time,
    @Default(false) bool isWholeDay,
  }) = _CalendarEventBuilder;
}

extension FirebaseMapper on CalendarEventBuilder {
  Map<String, dynamic> toFirebaseJson() {
    final datetime = DateTime(
      day!.year,
      day!.month,
      day!.day,
      !isWholeDay ? time!.hour : 0,
      !isWholeDay ? time!.minute : 0,
    );
    return {
      'title': title,
      'datetime': datetime.toIso8601String(),
      'isWholeDay': isWholeDay,
      if (description != null) 'description': description,
    };
  }
}
