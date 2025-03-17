import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'incrementcountablecommand.freezed.dart';

@freezed
class IncrementCountableCommand with _$IncrementCountableCommand {
  factory IncrementCountableCommand({
    required CountableData data,
    required BuildContext context,
  }) = _IncrementCountableCommand;
}
