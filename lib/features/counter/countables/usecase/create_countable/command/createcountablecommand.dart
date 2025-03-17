import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'createcountablecommand.freezed.dart';

@freezed
class CreateCountableCommand with _$CreateCountableCommand {
  factory CreateCountableCommand({
    required CountableDataBuilder data,
    required BuildContext context,
  }) = _CreateCountableCommand;
}
