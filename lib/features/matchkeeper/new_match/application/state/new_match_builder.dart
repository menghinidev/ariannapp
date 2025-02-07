import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_match_builder.freezed.dart';
part 'new_match_builder.g.dart';

@freezed
class MatchBuilder with _$MatchBuilder {
  factory MatchBuilder({
    Game? game,
    int? winningPoints,
    bool? doubleLife,
    @Default(<Team>[]) List<Team> teams,
  }) = _MatchBuilder;

  factory MatchBuilder.fromJson(Map<String, dynamic> json) => _$MatchBuilderFromJson(json);

  factory MatchBuilder.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;
    return MatchBuilder.fromJson(json);
  }
}

extension MatchBuilderFeatures on MatchBuilder {
  Map<String, dynamic> toFirestore() {
    final json = toJson()..remove('id');
    return json;
  }

  bool get canBuild => teams.length >= 2 && game != null && winningPoints != null;
}
