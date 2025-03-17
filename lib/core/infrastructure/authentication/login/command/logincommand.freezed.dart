// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logincommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginCommand {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of LoginCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginCommandCopyWith<LoginCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCommandCopyWith<$Res> {
  factory $LoginCommandCopyWith(
          LoginCommand value, $Res Function(LoginCommand) then) =
      _$LoginCommandCopyWithImpl<$Res, LoginCommand>;
  @useResult
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class _$LoginCommandCopyWithImpl<$Res, $Val extends LoginCommand>
    implements $LoginCommandCopyWith<$Res> {
  _$LoginCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCommandImplCopyWith<$Res>
    implements $LoginCommandCopyWith<$Res> {
  factory _$$LoginCommandImplCopyWith(
          _$LoginCommandImpl value, $Res Function(_$LoginCommandImpl) then) =
      __$$LoginCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class __$$LoginCommandImplCopyWithImpl<$Res>
    extends _$LoginCommandCopyWithImpl<$Res, _$LoginCommandImpl>
    implements _$$LoginCommandImplCopyWith<$Res> {
  __$$LoginCommandImplCopyWithImpl(
      _$LoginCommandImpl _value, $Res Function(_$LoginCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$LoginCommandImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginCommandImpl implements _LoginCommand {
  _$LoginCommandImpl(
      {required this.email, required this.password, required this.context});

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginCommand(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCommandImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, context);

  /// Create a copy of LoginCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCommandImplCopyWith<_$LoginCommandImpl> get copyWith =>
      __$$LoginCommandImplCopyWithImpl<_$LoginCommandImpl>(this, _$identity);
}

abstract class _LoginCommand implements LoginCommand {
  factory _LoginCommand(
      {required final String email,
      required final String password,
      required final BuildContext context}) = _$LoginCommandImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  BuildContext get context;

  /// Create a copy of LoginCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginCommandImplCopyWith<_$LoginCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
