// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_score_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditScoreCommand {
  ApplicationMatch get match => throw _privateConstructorUsedError;
  List<Score> get newScores => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of EditScoreCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditScoreCommandCopyWith<EditScoreCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditScoreCommandCopyWith<$Res> {
  factory $EditScoreCommandCopyWith(
          EditScoreCommand value, $Res Function(EditScoreCommand) then) =
      _$EditScoreCommandCopyWithImpl<$Res, EditScoreCommand>;
  @useResult
  $Res call(
      {ApplicationMatch match, List<Score> newScores, BuildContext context});

  $ApplicationMatchCopyWith<$Res> get match;
}

/// @nodoc
class _$EditScoreCommandCopyWithImpl<$Res, $Val extends EditScoreCommand>
    implements $EditScoreCommandCopyWith<$Res> {
  _$EditScoreCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditScoreCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? newScores = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as ApplicationMatch,
      newScores: null == newScores
          ? _value.newScores
          : newScores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  /// Create a copy of EditScoreCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApplicationMatchCopyWith<$Res> get match {
    return $ApplicationMatchCopyWith<$Res>(_value.match, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditScoreCommandImplCopyWith<$Res>
    implements $EditScoreCommandCopyWith<$Res> {
  factory _$$EditScoreCommandImplCopyWith(_$EditScoreCommandImpl value,
          $Res Function(_$EditScoreCommandImpl) then) =
      __$$EditScoreCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApplicationMatch match, List<Score> newScores, BuildContext context});

  @override
  $ApplicationMatchCopyWith<$Res> get match;
}

/// @nodoc
class __$$EditScoreCommandImplCopyWithImpl<$Res>
    extends _$EditScoreCommandCopyWithImpl<$Res, _$EditScoreCommandImpl>
    implements _$$EditScoreCommandImplCopyWith<$Res> {
  __$$EditScoreCommandImplCopyWithImpl(_$EditScoreCommandImpl _value,
      $Res Function(_$EditScoreCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditScoreCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? newScores = null,
    Object? context = null,
  }) {
    return _then(_$EditScoreCommandImpl(
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as ApplicationMatch,
      newScores: null == newScores
          ? _value._newScores
          : newScores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$EditScoreCommandImpl implements _EditScoreCommand {
  _$EditScoreCommandImpl(
      {required this.match,
      required final List<Score> newScores,
      required this.context})
      : _newScores = newScores;

  @override
  final ApplicationMatch match;
  final List<Score> _newScores;
  @override
  List<Score> get newScores {
    if (_newScores is EqualUnmodifiableListView) return _newScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newScores);
  }

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'EditScoreCommand(match: $match, newScores: $newScores, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditScoreCommandImpl &&
            (identical(other.match, match) || other.match == match) &&
            const DeepCollectionEquality()
                .equals(other._newScores, _newScores) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, match,
      const DeepCollectionEquality().hash(_newScores), context);

  /// Create a copy of EditScoreCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditScoreCommandImplCopyWith<_$EditScoreCommandImpl> get copyWith =>
      __$$EditScoreCommandImplCopyWithImpl<_$EditScoreCommandImpl>(
          this, _$identity);
}

abstract class _EditScoreCommand implements EditScoreCommand {
  factory _EditScoreCommand(
      {required final ApplicationMatch match,
      required final List<Score> newScores,
      required final BuildContext context}) = _$EditScoreCommandImpl;

  @override
  ApplicationMatch get match;
  @override
  List<Score> get newScores;
  @override
  BuildContext get context;

  /// Create a copy of EditScoreCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditScoreCommandImplCopyWith<_$EditScoreCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
