// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationMatchImpl _$$ApplicationMatchImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplicationMatchImpl(
      id: json['id'] as String,
      game: Game.fromJson(json['game'] as Map<String, dynamic>),
      scores: (json['scores'] as List<dynamic>)
          .map((e) => Score.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$MatchStatusEnumMap, json['status']),
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
    );

Map<String, dynamic> _$$ApplicationMatchImplToJson(
        _$ApplicationMatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'game': instance.game,
      'scores': instance.scores,
      'status': _$MatchStatusEnumMap[instance.status]!,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
    };

const _$MatchStatusEnumMap = {
  MatchStatus.completed: 'completed',
  MatchStatus.ongoing: 'ongoing',
};
