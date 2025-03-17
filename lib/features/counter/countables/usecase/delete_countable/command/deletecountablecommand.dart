import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deletecountablecommand.freezed.dart';

@freezed
class DeleteCountableCommand with _$DeleteCountableCommand {
  factory DeleteCountableCommand({
    required String id,
    required BuildContext context,
  }) = _DeleteCountableCommand;
}
