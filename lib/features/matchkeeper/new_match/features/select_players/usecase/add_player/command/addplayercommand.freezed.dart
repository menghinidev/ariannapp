// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addplayercommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPlayerCommand {
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of AddPlayerCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPlayerCommandCopyWith<AddPlayerCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlayerCommandCopyWith<$Res> {
  factory $AddPlayerCommandCopyWith(
          AddPlayerCommand value, $Res Function(AddPlayerCommand) then) =
      _$AddPlayerCommandCopyWithImpl<$Res, AddPlayerCommand>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AddPlayerCommandCopyWithImpl<$Res, $Val extends AddPlayerCommand>
    implements $AddPlayerCommandCopyWith<$Res> {
  _$AddPlayerCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPlayerCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPlayerCommandImplCopyWith<$Res>
    implements $AddPlayerCommandCopyWith<$Res> {
  factory _$$AddPlayerCommandImplCopyWith(_$AddPlayerCommandImpl value,
          $Res Function(_$AddPlayerCommandImpl) then) =
      __$$AddPlayerCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddPlayerCommandImplCopyWithImpl<$Res>
    extends _$AddPlayerCommandCopyWithImpl<$Res, _$AddPlayerCommandImpl>
    implements _$$AddPlayerCommandImplCopyWith<$Res> {
  __$$AddPlayerCommandImplCopyWithImpl(_$AddPlayerCommandImpl _value,
      $Res Function(_$AddPlayerCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPlayerCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddPlayerCommandImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPlayerCommandImpl implements _AddPlayerCommand {
  _$AddPlayerCommandImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AddPlayerCommand(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlayerCommandImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AddPlayerCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlayerCommandImplCopyWith<_$AddPlayerCommandImpl> get copyWith =>
      __$$AddPlayerCommandImplCopyWithImpl<_$AddPlayerCommandImpl>(
          this, _$identity);
}

abstract class _AddPlayerCommand implements AddPlayerCommand {
  factory _AddPlayerCommand({required final String name}) =
      _$AddPlayerCommandImpl;

  @override
  String get name;

  /// Create a copy of AddPlayerCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPlayerCommandImplCopyWith<_$AddPlayerCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
