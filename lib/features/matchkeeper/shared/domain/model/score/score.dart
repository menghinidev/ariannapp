import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score.freezed.dart';

@freezed
class Score with _$Score {
  factory Score({
    required String id,
    required Team team,
    required List<int> points,
  }) = _Score;
}
