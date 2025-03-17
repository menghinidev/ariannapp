import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recoverpasswordcommand.freezed.dart';

@freezed
class RecoverPasswordCommand with _$RecoverPasswordCommand {
  factory RecoverPasswordCommand({
    required String email,
    required BuildContext context,
  }) = _RecoverPasswordCommand;
}
