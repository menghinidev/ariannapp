import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movetogrocerylistcommand.freezed.dart';

@freezed
class MoveToGroceryListCommand with _$MoveToGroceryListCommand {
  factory MoveToGroceryListCommand({
    required ShelfItem item,
    required BuildContext context,
  }) = _MoveToGroceryListCommand;
}
