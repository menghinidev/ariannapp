import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_score_command.freezed.dart';

@freezed
class EditScoreCommand with _$EditScoreCommand {
  factory EditScoreCommand({
    required ApplicationMatch match,
    required List<Score> newScores,
  }) = _EditScoreCommand;
}
