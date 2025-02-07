// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      strategy:
          WinningStrategy.fromJson(json['strategy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'strategy': instance.strategy,
    };

_$WinningStrategyImpl _$$WinningStrategyImplFromJson(
        Map<String, dynamic> json) =>
    _$WinningStrategyImpl(
      startingFrom: (json['startingFrom'] as num).toInt(),
      goingUpTo: json['goingUpTo'] as bool,
      goingDownTo: json['goingDownTo'] as bool,
      threshold: (json['threshold'] as num).toInt(),
      winAtThreshold: json['winAtThreshold'] as bool,
      doubleLife: json['doubleLife'] as bool,
    );

Map<String, dynamic> _$$WinningStrategyImplToJson(
        _$WinningStrategyImpl instance) =>
    <String, dynamic>{
      'startingFrom': instance.startingFrom,
      'goingUpTo': instance.goingUpTo,
      'goingDownTo': instance.goingDownTo,
      'threshold': instance.threshold,
      'winAtThreshold': instance.winAtThreshold,
      'doubleLife': instance.doubleLife,
    };
