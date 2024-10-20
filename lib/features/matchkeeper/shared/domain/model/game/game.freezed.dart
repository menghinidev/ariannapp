// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Game {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  WinningStrategy get strategy => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call({String id, String name, WinningStrategy strategy});

  $WinningStrategyCopyWith<$Res> get strategy;
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? strategy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as WinningStrategy,
    ) as $Val);
  }

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WinningStrategyCopyWith<$Res> get strategy {
    return $WinningStrategyCopyWith<$Res>(_value.strategy, (value) {
      return _then(_value.copyWith(strategy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, WinningStrategy strategy});

  @override
  $WinningStrategyCopyWith<$Res> get strategy;
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? strategy = null,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as WinningStrategy,
    ));
  }
}

/// @nodoc

class _$GameImpl implements _Game {
  const _$GameImpl(
      {required this.id, required this.name, required this.strategy});

  @override
  final String id;
  @override
  final String name;
  @override
  final WinningStrategy strategy;

  @override
  String toString() {
    return 'Game(id: $id, name: $name, strategy: $strategy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, strategy);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);
}

abstract class _Game implements Game {
  const factory _Game(
      {required final String id,
      required final String name,
      required final WinningStrategy strategy}) = _$GameImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  WinningStrategy get strategy;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WinningStrategy {
  int get startingFrom => throw _privateConstructorUsedError;
  bool get goingUpTo => throw _privateConstructorUsedError;
  bool get goingDownTo => throw _privateConstructorUsedError;
  int get threshold => throw _privateConstructorUsedError;
  bool get winAtThreshold => throw _privateConstructorUsedError;
  bool get doubleLife => throw _privateConstructorUsedError;

  /// Create a copy of WinningStrategy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WinningStrategyCopyWith<WinningStrategy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinningStrategyCopyWith<$Res> {
  factory $WinningStrategyCopyWith(
          WinningStrategy value, $Res Function(WinningStrategy) then) =
      _$WinningStrategyCopyWithImpl<$Res, WinningStrategy>;
  @useResult
  $Res call(
      {int startingFrom,
      bool goingUpTo,
      bool goingDownTo,
      int threshold,
      bool winAtThreshold,
      bool doubleLife});
}

/// @nodoc
class _$WinningStrategyCopyWithImpl<$Res, $Val extends WinningStrategy>
    implements $WinningStrategyCopyWith<$Res> {
  _$WinningStrategyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WinningStrategy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startingFrom = null,
    Object? goingUpTo = null,
    Object? goingDownTo = null,
    Object? threshold = null,
    Object? winAtThreshold = null,
    Object? doubleLife = null,
  }) {
    return _then(_value.copyWith(
      startingFrom: null == startingFrom
          ? _value.startingFrom
          : startingFrom // ignore: cast_nullable_to_non_nullable
              as int,
      goingUpTo: null == goingUpTo
          ? _value.goingUpTo
          : goingUpTo // ignore: cast_nullable_to_non_nullable
              as bool,
      goingDownTo: null == goingDownTo
          ? _value.goingDownTo
          : goingDownTo // ignore: cast_nullable_to_non_nullable
              as bool,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
      winAtThreshold: null == winAtThreshold
          ? _value.winAtThreshold
          : winAtThreshold // ignore: cast_nullable_to_non_nullable
              as bool,
      doubleLife: null == doubleLife
          ? _value.doubleLife
          : doubleLife // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WinningStrategyImplCopyWith<$Res>
    implements $WinningStrategyCopyWith<$Res> {
  factory _$$WinningStrategyImplCopyWith(_$WinningStrategyImpl value,
          $Res Function(_$WinningStrategyImpl) then) =
      __$$WinningStrategyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int startingFrom,
      bool goingUpTo,
      bool goingDownTo,
      int threshold,
      bool winAtThreshold,
      bool doubleLife});
}

/// @nodoc
class __$$WinningStrategyImplCopyWithImpl<$Res>
    extends _$WinningStrategyCopyWithImpl<$Res, _$WinningStrategyImpl>
    implements _$$WinningStrategyImplCopyWith<$Res> {
  __$$WinningStrategyImplCopyWithImpl(
      _$WinningStrategyImpl _value, $Res Function(_$WinningStrategyImpl) _then)
      : super(_value, _then);

  /// Create a copy of WinningStrategy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startingFrom = null,
    Object? goingUpTo = null,
    Object? goingDownTo = null,
    Object? threshold = null,
    Object? winAtThreshold = null,
    Object? doubleLife = null,
  }) {
    return _then(_$WinningStrategyImpl(
      startingFrom: null == startingFrom
          ? _value.startingFrom
          : startingFrom // ignore: cast_nullable_to_non_nullable
              as int,
      goingUpTo: null == goingUpTo
          ? _value.goingUpTo
          : goingUpTo // ignore: cast_nullable_to_non_nullable
              as bool,
      goingDownTo: null == goingDownTo
          ? _value.goingDownTo
          : goingDownTo // ignore: cast_nullable_to_non_nullable
              as bool,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
      winAtThreshold: null == winAtThreshold
          ? _value.winAtThreshold
          : winAtThreshold // ignore: cast_nullable_to_non_nullable
              as bool,
      doubleLife: null == doubleLife
          ? _value.doubleLife
          : doubleLife // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WinningStrategyImpl implements _WinningStrategy {
  const _$WinningStrategyImpl(
      {required this.startingFrom,
      required this.goingUpTo,
      required this.goingDownTo,
      required this.threshold,
      required this.winAtThreshold,
      required this.doubleLife});

  @override
  final int startingFrom;
  @override
  final bool goingUpTo;
  @override
  final bool goingDownTo;
  @override
  final int threshold;
  @override
  final bool winAtThreshold;
  @override
  final bool doubleLife;

  @override
  String toString() {
    return 'WinningStrategy(startingFrom: $startingFrom, goingUpTo: $goingUpTo, goingDownTo: $goingDownTo, threshold: $threshold, winAtThreshold: $winAtThreshold, doubleLife: $doubleLife)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinningStrategyImpl &&
            (identical(other.startingFrom, startingFrom) ||
                other.startingFrom == startingFrom) &&
            (identical(other.goingUpTo, goingUpTo) ||
                other.goingUpTo == goingUpTo) &&
            (identical(other.goingDownTo, goingDownTo) ||
                other.goingDownTo == goingDownTo) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.winAtThreshold, winAtThreshold) ||
                other.winAtThreshold == winAtThreshold) &&
            (identical(other.doubleLife, doubleLife) ||
                other.doubleLife == doubleLife));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startingFrom, goingUpTo,
      goingDownTo, threshold, winAtThreshold, doubleLife);

  /// Create a copy of WinningStrategy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WinningStrategyImplCopyWith<_$WinningStrategyImpl> get copyWith =>
      __$$WinningStrategyImplCopyWithImpl<_$WinningStrategyImpl>(
          this, _$identity);
}

abstract class _WinningStrategy implements WinningStrategy {
  const factory _WinningStrategy(
      {required final int startingFrom,
      required final bool goingUpTo,
      required final bool goingDownTo,
      required final int threshold,
      required final bool winAtThreshold,
      required final bool doubleLife}) = _$WinningStrategyImpl;

  @override
  int get startingFrom;
  @override
  bool get goingUpTo;
  @override
  bool get goingDownTo;
  @override
  int get threshold;
  @override
  bool get winAtThreshold;
  @override
  bool get doubleLife;

  /// Create a copy of WinningStrategy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WinningStrategyImplCopyWith<_$WinningStrategyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
