// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreImpl _$$ScoreImplFromJson(Map<String, dynamic> json) => _$ScoreImpl(
      id: json['id'] as String,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      lifeRemaining: (json['lifeRemaining'] as num).toInt(),
      points: (json['points'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ScoreImplToJson(_$ScoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team': instance.team.toJson(),
      'lifeRemaining': instance.lifeRemaining,
      'points': instance.points,
    };
