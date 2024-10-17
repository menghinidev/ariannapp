import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_score_command.freezed.dart';

@freezed
class EditScoreCommand with _$EditScoreCommand {
  factory EditScoreCommand() = _EditScoreCommand;
}
