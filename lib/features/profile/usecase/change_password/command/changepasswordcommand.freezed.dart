// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'changepasswordcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePasswordCommand {
  User get user => throw _privateConstructorUsedError;
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordCommandCopyWith<ChangePasswordCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordCommandCopyWith<$Res> {
  factory $ChangePasswordCommandCopyWith(ChangePasswordCommand value,
          $Res Function(ChangePasswordCommand) then) =
      _$ChangePasswordCommandCopyWithImpl<$Res, ChangePasswordCommand>;
  @useResult
  $Res call(
      {User user,
      String oldPassword,
      String newPassword,
      String confirmPassword,
      BuildContext context});
}

/// @nodoc
class _$ChangePasswordCommandCopyWithImpl<$Res,
        $Val extends ChangePasswordCommand>
    implements $ChangePasswordCommandCopyWith<$Res> {
  _$ChangePasswordCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordCommandImplCopyWith<$Res>
    implements $ChangePasswordCommandCopyWith<$Res> {
  factory _$$ChangePasswordCommandImplCopyWith(
          _$ChangePasswordCommandImpl value,
          $Res Function(_$ChangePasswordCommandImpl) then) =
      __$$ChangePasswordCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      String oldPassword,
      String newPassword,
      String confirmPassword,
      BuildContext context});
}

/// @nodoc
class __$$ChangePasswordCommandImplCopyWithImpl<$Res>
    extends _$ChangePasswordCommandCopyWithImpl<$Res,
        _$ChangePasswordCommandImpl>
    implements _$$ChangePasswordCommandImplCopyWith<$Res> {
  __$$ChangePasswordCommandImplCopyWithImpl(_$ChangePasswordCommandImpl _value,
      $Res Function(_$ChangePasswordCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? context = null,
  }) {
    return _then(_$ChangePasswordCommandImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ChangePasswordCommandImpl implements _ChangePasswordCommand {
  _$ChangePasswordCommandImpl(
      {required this.user,
      required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword,
      required this.context});

  @override
  final User user;
  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String confirmPassword;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChangePasswordCommand(user: $user, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordCommandImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, oldPassword, newPassword, confirmPassword, context);

  /// Create a copy of ChangePasswordCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordCommandImplCopyWith<_$ChangePasswordCommandImpl>
      get copyWith => __$$ChangePasswordCommandImplCopyWithImpl<
          _$ChangePasswordCommandImpl>(this, _$identity);
}

abstract class _ChangePasswordCommand implements ChangePasswordCommand {
  factory _ChangePasswordCommand(
      {required final User user,
      required final String oldPassword,
      required final String newPassword,
      required final String confirmPassword,
      required final BuildContext context}) = _$ChangePasswordCommandImpl;

  @override
  User get user;
  @override
  String get oldPassword;
  @override
  String get newPassword;
  @override
  String get confirmPassword;
  @override
  BuildContext get context;

  /// Create a copy of ChangePasswordCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordCommandImplCopyWith<_$ChangePasswordCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
