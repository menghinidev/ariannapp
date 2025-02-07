import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  factory Team({
    required String id,
    required List<Player> players,
    String? name,
  }) = _Team;
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  factory Team.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;
    return Team.fromJson(json);
  }
}

extension PlayersFormatter on Team {
  Map<String, dynamic> toFirestore() {
    final json = toJson()
      ..remove('id')
      ..remove('players');
    final playersJson = players.map((player) => player.toFirestore()).toList();
    json['players'] = playersJson;
    return json;
  }

  String get playersFormatted {
    return players.map((player) => player.name).join(', ');
  }
}
