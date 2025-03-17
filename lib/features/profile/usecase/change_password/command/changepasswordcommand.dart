import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'changepasswordcommand.freezed.dart';

@freezed
class ChangePasswordCommand with _$ChangePasswordCommand {
  factory ChangePasswordCommand({
    required User user,
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
    required BuildContext context,
  }) = _ChangePasswordCommand;
}
