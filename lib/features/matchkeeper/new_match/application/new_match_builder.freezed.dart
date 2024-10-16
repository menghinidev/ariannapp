// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_match_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MatchBuilder {
  Game? get game => throw _privateConstructorUsedError;
  int? get winningPoints => throw _privateConstructorUsedError;
  bool? get doubleLife => throw _privateConstructorUsedError;

  /// Create a copy of MatchBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchBuilderCopyWith<MatchBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchBuilderCopyWith<$Res> {
  factory $MatchBuilderCopyWith(
          MatchBuilder value, $Res Function(MatchBuilder) then) =
      _$MatchBuilderCopyWithImpl<$Res, MatchBuilder>;
  @useResult
  $Res call({Game? game, int? winningPoints, bool? doubleLife});

  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class _$MatchBuilderCopyWithImpl<$Res, $Val extends MatchBuilder>
    implements $MatchBuilderCopyWith<$Res> {
  _$MatchBuilderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = freezed,
    Object? winningPoints = freezed,
    Object? doubleLife = freezed,
  }) {
    return _then(_value.copyWith(
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      winningPoints: freezed == winningPoints
          ? _value.winningPoints
          : winningPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      doubleLife: freezed == doubleLife
          ? _value.doubleLife
          : doubleLife // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of MatchBuilder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchBuilderImplCopyWith<$Res>
    implements $MatchBuilderCopyWith<$Res> {
  factory _$$MatchBuilderImplCopyWith(
          _$MatchBuilderImpl value, $Res Function(_$MatchBuilderImpl) then) =
      __$$MatchBuilderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Game? game, int? winningPoints, bool? doubleLife});

  @override
  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class __$$MatchBuilderImplCopyWithImpl<$Res>
    extends _$MatchBuilderCopyWithImpl<$Res, _$MatchBuilderImpl>
    implements _$$MatchBuilderImplCopyWith<$Res> {
  __$$MatchBuilderImplCopyWithImpl(
      _$MatchBuilderImpl _value, $Res Function(_$MatchBuilderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = freezed,
    Object? winningPoints = freezed,
    Object? doubleLife = freezed,
  }) {
    return _then(_$MatchBuilderImpl(
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      winningPoints: freezed == winningPoints
          ? _value.winningPoints
          : winningPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      doubleLife: freezed == doubleLife
          ? _value.doubleLife
          : doubleLife // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$MatchBuilderImpl implements _MatchBuilder {
  _$MatchBuilderImpl({this.game, this.winningPoints, this.doubleLife});

  @override
  final Game? game;
  @override
  final int? winningPoints;
  @override
  final bool? doubleLife;

  @override
  String toString() {
    return 'MatchBuilder(game: $game, winningPoints: $winningPoints, doubleLife: $doubleLife)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchBuilderImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.winningPoints, winningPoints) ||
                other.winningPoints == winningPoints) &&
            (identical(other.doubleLife, doubleLife) ||
                other.doubleLife == doubleLife));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game, winningPoints, doubleLife);

  /// Create a copy of MatchBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchBuilderImplCopyWith<_$MatchBuilderImpl> get copyWith =>
      __$$MatchBuilderImplCopyWithImpl<_$MatchBuilderImpl>(this, _$identity);
}

abstract class _MatchBuilder implements MatchBuilder {
  factory _MatchBuilder(
      {final Game? game,
      final int? winningPoints,
      final bool? doubleLife}) = _$MatchBuilderImpl;

  @override
  Game? get game;
  @override
  int? get winningPoints;
  @override
  bool? get doubleLife;

  /// Create a copy of MatchBuilder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchBuilderImplCopyWith<_$MatchBuilderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
