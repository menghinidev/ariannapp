import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'removegroceryitemcommand.freezed.dart';

@freezed
class RemoveGroceryItemCommand with _$RemoveGroceryItemCommand {
  factory RemoveGroceryItemCommand({
    required String name,
    required BuildContext context,
  }) = _RemoveGroceryItemCommand;
}
