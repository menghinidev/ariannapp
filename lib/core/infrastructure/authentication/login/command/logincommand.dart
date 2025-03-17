import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logincommand.freezed.dart';

@freezed
class LoginCommand with _$LoginCommand {
  factory LoginCommand({
    required String email,
    required String password,
    required BuildContext context,
  }) = _LoginCommand;
}
