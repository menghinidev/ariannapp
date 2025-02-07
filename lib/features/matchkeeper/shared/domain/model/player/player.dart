import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  factory Player({
    required String id,
    required String name,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  factory Player.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;
    return Player.fromJson(json);
  }
}

extension PlayerFeatures on Player {
  Map<String, dynamic> toFirestore() {
    final json = toJson()..remove('id');
    return json;
  }
}

extension PlayersFeatures on List<Player> {
  String get playersFormatter {
    return map((e) => e.name).join(', ');
  }
}
