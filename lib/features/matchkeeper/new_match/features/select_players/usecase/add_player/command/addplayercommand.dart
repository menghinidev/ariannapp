import 'package:freezed_annotation/freezed_annotation.dart';

part 'addplayercommand.freezed.dart';

@freezed
class AddPlayerCommand with _$AddPlayerCommand {
  factory AddPlayerCommand({
    required String name,
  }) = _AddPlayerCommand;
}
