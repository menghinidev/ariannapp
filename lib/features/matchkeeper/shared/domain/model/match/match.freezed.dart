// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicationMatch {
  String get id => throw _privateConstructorUsedError;
  Game get game => throw _privateConstructorUsedError;
  List<Score> get scores => throw _privateConstructorUsedError;
  MatchStatus get status => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  int get winningPoints => throw _privateConstructorUsedError;
  bool get doubleLife => throw _privateConstructorUsedError;

  /// Create a copy of ApplicationMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApplicationMatchCopyWith<ApplicationMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationMatchCopyWith<$Res> {
  factory $ApplicationMatchCopyWith(
          ApplicationMatch value, $Res Function(ApplicationMatch) then) =
      _$ApplicationMatchCopyWithImpl<$Res, ApplicationMatch>;
  @useResult
  $Res call(
      {String id,
      Game game,
      List<Score> scores,
      MatchStatus status,
      DateTime lastUpdate,
      int winningPoints,
      bool doubleLife});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$ApplicationMatchCopyWithImpl<$Res, $Val extends ApplicationMatch>
    implements $ApplicationMatchCopyWith<$Res> {
  _$ApplicationMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplicationMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? game = null,
    Object? scores = null,
    Object? status = null,
    Object? lastUpdate = null,
    Object? winningPoints = null,
    Object? doubleLife = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      winningPoints: null == winningPoints
          ? _value.winningPoints
          : winningPoints // ignore: cast_nullable_to_non_nullable
              as int,
      doubleLife: null == doubleLife
          ? _value.doubleLife
          : doubleLife // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ApplicationMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicationMatchImplCopyWith<$Res>
    implements $ApplicationMatchCopyWith<$Res> {
  factory _$$ApplicationMatchImplCopyWith(_$ApplicationMatchImpl value,
          $Res Function(_$ApplicationMatchImpl) then) =
      __$$ApplicationMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Game game,
      List<Score> scores,
      MatchStatus status,
      DateTime lastUpdate,
      int winningPoints,
      bool doubleLife});

  @override
  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$$ApplicationMatchImplCopyWithImpl<$Res>
    extends _$ApplicationMatchCopyWithImpl<$Res, _$ApplicationMatchImpl>
    implements _$$ApplicationMatchImplCopyWith<$Res> {
  __$$ApplicationMatchImplCopyWithImpl(_$ApplicationMatchImpl _value,
      $Res Function(_$ApplicationMatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? game = null,
    Object? scores = null,
    Object? status = null,
    Object? lastUpdate = null,
    Object? winningPoints = null,
    Object? doubleLife = null,
  }) {
    return _then(_$ApplicationMatchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      winningPoints: null == winningPoints
          ? _value.winningPoints
          : winningPoints // ignore: cast_nullable_to_non_nullable
              as int,
      doubleLife: null == doubleLife
          ? _value.doubleLife
          : doubleLife // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ApplicationMatchImpl implements _ApplicationMatch {
  _$ApplicationMatchImpl(
      {required this.id,
      required this.game,
      required final List<Score> scores,
      required this.status,
      required this.lastUpdate,
      required this.winningPoints,
      required this.doubleLife})
      : _scores = scores;

  @override
  final String id;
  @override
  final Game game;
  final List<Score> _scores;
  @override
  List<Score> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  final MatchStatus status;
  @override
  final DateTime lastUpdate;
  @override
  final int winningPoints;
  @override
  final bool doubleLife;

  @override
  String toString() {
    return 'ApplicationMatch(id: $id, game: $game, scores: $scores, status: $status, lastUpdate: $lastUpdate, winningPoints: $winningPoints, doubleLife: $doubleLife)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationMatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.game, game) || other.game == game) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.winningPoints, winningPoints) ||
                other.winningPoints == winningPoints) &&
            (identical(other.doubleLife, doubleLife) ||
                other.doubleLife == doubleLife));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      game,
      const DeepCollectionEquality().hash(_scores),
      status,
      lastUpdate,
      winningPoints,
      doubleLife);

  /// Create a copy of ApplicationMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationMatchImplCopyWith<_$ApplicationMatchImpl> get copyWith =>
      __$$ApplicationMatchImplCopyWithImpl<_$ApplicationMatchImpl>(
          this, _$identity);
}

abstract class _ApplicationMatch implements ApplicationMatch {
  factory _ApplicationMatch(
      {required final String id,
      required final Game game,
      required final List<Score> scores,
      required final MatchStatus status,
      required final DateTime lastUpdate,
      required final int winningPoints,
      required final bool doubleLife}) = _$ApplicationMatchImpl;

  @override
  String get id;
  @override
  Game get game;
  @override
  List<Score> get scores;
  @override
  MatchStatus get status;
  @override
  DateTime get lastUpdate;
  @override
  int get winningPoints;
  @override
  bool get doubleLife;

  /// Create a copy of ApplicationMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplicationMatchImplCopyWith<_$ApplicationMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
