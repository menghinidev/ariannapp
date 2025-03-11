import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deleteshelfitemcommand.freezed.dart';

@freezed
class DeleteShelfItemCommand with _$DeleteShelfItemCommand {
  factory DeleteShelfItemCommand({
    required ShelfItem shelf,
    required BuildContext context,
  }) = _DeleteShelfItemCommand;
}
