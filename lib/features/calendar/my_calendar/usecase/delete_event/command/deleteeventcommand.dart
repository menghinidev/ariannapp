import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deleteeventcommand.freezed.dart';

@freezed
class DeleteEventCommand with _$DeleteEventCommand {
  factory DeleteEventCommand({
    required BuildContext context,
    required String eventId,
  }) = _DeleteEventCommand;
}
