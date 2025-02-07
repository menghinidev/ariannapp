import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score.freezed.dart';
part 'score.g.dart';

@freezed
class Score with _$Score {
  factory Score({
    required String id,
    required Team team,
    required List<int> points,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);

  factory Score.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;
    return Score.fromJson(json);
  }
}

extension PlayersFormatter on Score {
  Map<String, dynamic> toFirestore() {
    final json = toJson()
      ..remove('id')
      ..remove('team');
    final formattedTeam = team.toJson();
    json['team'] = formattedTeam;
    return json;
  }
}
