import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'updategrocerieslistordercommand.freezed.dart';

@freezed
class UpdateGroceriesListOrderCommand with _$UpdateGroceriesListOrderCommand {
  factory UpdateGroceriesListOrderCommand({
    required List<GroceriesCheckListItem> items,
    required BuildContext context,
  }) = _UpdateGroceriesListOrderCommand;
}
