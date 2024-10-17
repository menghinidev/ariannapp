// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_matches_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetMatchesCommand {
  MatchStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of GetMatchesCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMatchesCommandCopyWith<GetMatchesCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMatchesCommandCopyWith<$Res> {
  factory $GetMatchesCommandCopyWith(
          GetMatchesCommand value, $Res Function(GetMatchesCommand) then) =
      _$GetMatchesCommandCopyWithImpl<$Res, GetMatchesCommand>;
  @useResult
  $Res call({MatchStatus status});
}

/// @nodoc
class _$GetMatchesCommandCopyWithImpl<$Res, $Val extends GetMatchesCommand>
    implements $GetMatchesCommandCopyWith<$Res> {
  _$GetMatchesCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMatchesCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMatchesCommandImplCopyWith<$Res>
    implements $GetMatchesCommandCopyWith<$Res> {
  factory _$$GetMatchesCommandImplCopyWith(_$GetMatchesCommandImpl value,
          $Res Function(_$GetMatchesCommandImpl) then) =
      __$$GetMatchesCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MatchStatus status});
}

/// @nodoc
class __$$GetMatchesCommandImplCopyWithImpl<$Res>
    extends _$GetMatchesCommandCopyWithImpl<$Res, _$GetMatchesCommandImpl>
    implements _$$GetMatchesCommandImplCopyWith<$Res> {
  __$$GetMatchesCommandImplCopyWithImpl(_$GetMatchesCommandImpl _value,
      $Res Function(_$GetMatchesCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMatchesCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$GetMatchesCommandImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
    ));
  }
}

/// @nodoc

class _$GetMatchesCommandImpl implements _GetMatchesCommand {
  _$GetMatchesCommandImpl({required this.status});

  @override
  final MatchStatus status;

  @override
  String toString() {
    return 'GetMatchesCommand(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMatchesCommandImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of GetMatchesCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMatchesCommandImplCopyWith<_$GetMatchesCommandImpl> get copyWith =>
      __$$GetMatchesCommandImplCopyWithImpl<_$GetMatchesCommandImpl>(
          this, _$identity);
}

abstract class _GetMatchesCommand implements GetMatchesCommand {
  factory _GetMatchesCommand({required final MatchStatus status}) =
      _$GetMatchesCommandImpl;

  @override
  MatchStatus get status;

  /// Create a copy of GetMatchesCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMatchesCommandImplCopyWith<_$GetMatchesCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
