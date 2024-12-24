// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_horoscope_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetHoroscopeCommand {
  HoroscopeSign get sign => throw _privateConstructorUsedError;

  /// Create a copy of GetHoroscopeCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetHoroscopeCommandCopyWith<GetHoroscopeCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHoroscopeCommandCopyWith<$Res> {
  factory $GetHoroscopeCommandCopyWith(
          GetHoroscopeCommand value, $Res Function(GetHoroscopeCommand) then) =
      _$GetHoroscopeCommandCopyWithImpl<$Res, GetHoroscopeCommand>;
  @useResult
  $Res call({HoroscopeSign sign});
}

/// @nodoc
class _$GetHoroscopeCommandCopyWithImpl<$Res, $Val extends GetHoroscopeCommand>
    implements $GetHoroscopeCommandCopyWith<$Res> {
  _$GetHoroscopeCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetHoroscopeCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sign = null,
  }) {
    return _then(_value.copyWith(
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as HoroscopeSign,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetHoroscopeCommandImplCopyWith<$Res>
    implements $GetHoroscopeCommandCopyWith<$Res> {
  factory _$$GetHoroscopeCommandImplCopyWith(_$GetHoroscopeCommandImpl value,
          $Res Function(_$GetHoroscopeCommandImpl) then) =
      __$$GetHoroscopeCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HoroscopeSign sign});
}

/// @nodoc
class __$$GetHoroscopeCommandImplCopyWithImpl<$Res>
    extends _$GetHoroscopeCommandCopyWithImpl<$Res, _$GetHoroscopeCommandImpl>
    implements _$$GetHoroscopeCommandImplCopyWith<$Res> {
  __$$GetHoroscopeCommandImplCopyWithImpl(_$GetHoroscopeCommandImpl _value,
      $Res Function(_$GetHoroscopeCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetHoroscopeCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sign = null,
  }) {
    return _then(_$GetHoroscopeCommandImpl(
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as HoroscopeSign,
    ));
  }
}

/// @nodoc

class _$GetHoroscopeCommandImpl implements _GetHoroscopeCommand {
  _$GetHoroscopeCommandImpl({required this.sign});

  @override
  final HoroscopeSign sign;

  @override
  String toString() {
    return 'GetHoroscopeCommand(sign: $sign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHoroscopeCommandImpl &&
            (identical(other.sign, sign) || other.sign == sign));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sign);

  /// Create a copy of GetHoroscopeCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHoroscopeCommandImplCopyWith<_$GetHoroscopeCommandImpl> get copyWith =>
      __$$GetHoroscopeCommandImplCopyWithImpl<_$GetHoroscopeCommandImpl>(
          this, _$identity);
}

abstract class _GetHoroscopeCommand implements GetHoroscopeCommand {
  factory _GetHoroscopeCommand({required final HoroscopeSign sign}) =
      _$GetHoroscopeCommandImpl;

  @override
  HoroscopeSign get sign;

  /// Create a copy of GetHoroscopeCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHoroscopeCommandImplCopyWith<_$GetHoroscopeCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
