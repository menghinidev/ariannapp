// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updateusercommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateUserCommand {
  BuildContext get context => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserCommandCopyWith<UpdateUserCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserCommandCopyWith<$Res> {
  factory $UpdateUserCommandCopyWith(
          UpdateUserCommand value, $Res Function(UpdateUserCommand) then) =
      _$UpdateUserCommandCopyWithImpl<$Res, UpdateUserCommand>;
  @useResult
  $Res call({BuildContext context, User user, String? name, String? photoUrl});
}

/// @nodoc
class _$UpdateUserCommandCopyWithImpl<$Res, $Val extends UpdateUserCommand>
    implements $UpdateUserCommandCopyWith<$Res> {
  _$UpdateUserCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? user = null,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserCommandImplCopyWith<$Res>
    implements $UpdateUserCommandCopyWith<$Res> {
  factory _$$UpdateUserCommandImplCopyWith(_$UpdateUserCommandImpl value,
          $Res Function(_$UpdateUserCommandImpl) then) =
      __$$UpdateUserCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, User user, String? name, String? photoUrl});
}

/// @nodoc
class __$$UpdateUserCommandImplCopyWithImpl<$Res>
    extends _$UpdateUserCommandCopyWithImpl<$Res, _$UpdateUserCommandImpl>
    implements _$$UpdateUserCommandImplCopyWith<$Res> {
  __$$UpdateUserCommandImplCopyWithImpl(_$UpdateUserCommandImpl _value,
      $Res Function(_$UpdateUserCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? user = null,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$UpdateUserCommandImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateUserCommandImpl implements _UpdateUserCommand {
  _$UpdateUserCommandImpl(
      {required this.context, required this.user, this.name, this.photoUrl});

  @override
  final BuildContext context;
  @override
  final User user;
  @override
  final String? name;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'UpdateUserCommand(context: $context, user: $user, name: $name, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserCommandImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, user, name, photoUrl);

  /// Create a copy of UpdateUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserCommandImplCopyWith<_$UpdateUserCommandImpl> get copyWith =>
      __$$UpdateUserCommandImplCopyWithImpl<_$UpdateUserCommandImpl>(
          this, _$identity);
}

abstract class _UpdateUserCommand implements UpdateUserCommand {
  factory _UpdateUserCommand(
      {required final BuildContext context,
      required final User user,
      final String? name,
      final String? photoUrl}) = _$UpdateUserCommandImpl;

  @override
  BuildContext get context;
  @override
  User get user;
  @override
  String? get name;
  @override
  String? get photoUrl;

  /// Create a copy of UpdateUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserCommandImplCopyWith<_$UpdateUserCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
