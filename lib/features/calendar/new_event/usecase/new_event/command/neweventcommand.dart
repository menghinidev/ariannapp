import 'package:ariannapp/features/calendar/shared/model/builder/calendareventbuilder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'neweventcommand.freezed.dart';

@freezed
class NewEventCommand with _$NewEventCommand {
  factory NewEventCommand({
    required BuildContext context,
    required CalendarEventBuilder event,
  }) = _NewEventCommand;
}
