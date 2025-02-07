import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'removegroceryitemcommand.freezed.dart';

@freezed
class RemoveGroceryItemCommand with _$RemoveGroceryItemCommand {
  factory RemoveGroceryItemCommand({
    required GroceriesCheckListItem item,
    required BuildContext context,
  }) = _RemoveGroceryItemCommand;
}
