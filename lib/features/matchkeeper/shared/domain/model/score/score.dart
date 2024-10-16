import 'package:freezed_annotation/freezed_annotation.dart';

part 'score.freezed.dart';

@freezed
class Score with _$Score {
  factory Score({
    required String teamId,
    required List<int> points,
  }) = _Score;
}
