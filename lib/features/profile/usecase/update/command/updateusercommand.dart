import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'updateusercommand.freezed.dart';

@freezed
class UpdateUserCommand with _$UpdateUserCommand {
  factory UpdateUserCommand({
    required BuildContext context,
    required User user,
    String? name,
    String? photoUrl,
  }) = _UpdateUserCommand;
}
