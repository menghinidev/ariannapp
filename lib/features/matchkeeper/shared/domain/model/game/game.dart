import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  @JsonSerializable(explicitToJson: true)
  const factory Game({
    required String id,
    required String name,
    required WinningStrategy strategy,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  factory Game.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;
    return Game.fromJson(json);
  }
}

@freezed
class WinningStrategy with _$WinningStrategy {
  const factory WinningStrategy({
    required int startingFrom,
    required bool goingUpTo,
    required bool goingDownTo,
    required int threshold,
    required bool winAtThreshold,
    required bool doubleLife,
  }) = _WinningStrategy;

  factory WinningStrategy.fromJson(Map<String, dynamic> json) => _$WinningStrategyFromJson(json);
}

extension GameFeatures on Game {
  Map<String, dynamic> toFirestore() {
    final json = toJson()
      ..remove('id')
      ..remove('strategy');
    final jsonStrategy = strategy.toJson();
    json['strategy'] = jsonStrategy;
    return json;
  }

  Game changeStandardPoints(int points) {
    return copyWith.strategy(threshold: points);
  }

  Game get toggleDoubleLife {
    return copyWith.strategy(doubleLife: !strategy.doubleLife);
  }
}
