import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_matches_command.freezed.dart';

@freezed
class GetMatchesCommand with _$GetMatchesCommand {
  factory GetMatchesCommand({
    required MatchStatus status,
  }) = _GetMatchesCommand;
}
