// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_match_builder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchBuilderImpl _$$MatchBuilderImplFromJson(Map<String, dynamic> json) =>
    _$MatchBuilderImpl(
      game: json['game'] == null
          ? null
          : Game.fromJson(json['game'] as Map<String, dynamic>),
      winningPoints: (json['winningPoints'] as num?)?.toInt(),
      doubleLife: json['doubleLife'] as bool?,
      teams: (json['teams'] as List<dynamic>?)
              ?.map((e) => Team.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Team>[],
    );

Map<String, dynamic> _$$MatchBuilderImplToJson(_$MatchBuilderImpl instance) =>
    <String, dynamic>{
      'game': instance.game,
      'winningPoints': instance.winningPoints,
      'doubleLife': instance.doubleLife,
      'teams': instance.teams,
    };
