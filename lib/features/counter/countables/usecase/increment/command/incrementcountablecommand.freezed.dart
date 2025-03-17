// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incrementcountablecommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IncrementCountableCommand {
  CountableData get data => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of IncrementCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncrementCountableCommandCopyWith<IncrementCountableCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncrementCountableCommandCopyWith<$Res> {
  factory $IncrementCountableCommandCopyWith(IncrementCountableCommand value,
          $Res Function(IncrementCountableCommand) then) =
      _$IncrementCountableCommandCopyWithImpl<$Res, IncrementCountableCommand>;
  @useResult
  $Res call({CountableData data, BuildContext context});

  $CountableDataCopyWith<$Res> get data;
}

/// @nodoc
class _$IncrementCountableCommandCopyWithImpl<$Res,
        $Val extends IncrementCountableCommand>
    implements $IncrementCountableCommandCopyWith<$Res> {
  _$IncrementCountableCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncrementCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CountableData,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  /// Create a copy of IncrementCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountableDataCopyWith<$Res> get data {
    return $CountableDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IncrementCountableCommandImplCopyWith<$Res>
    implements $IncrementCountableCommandCopyWith<$Res> {
  factory _$$IncrementCountableCommandImplCopyWith(
          _$IncrementCountableCommandImpl value,
          $Res Function(_$IncrementCountableCommandImpl) then) =
      __$$IncrementCountableCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountableData data, BuildContext context});

  @override
  $CountableDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IncrementCountableCommandImplCopyWithImpl<$Res>
    extends _$IncrementCountableCommandCopyWithImpl<$Res,
        _$IncrementCountableCommandImpl>
    implements _$$IncrementCountableCommandImplCopyWith<$Res> {
  __$$IncrementCountableCommandImplCopyWithImpl(
      _$IncrementCountableCommandImpl _value,
      $Res Function(_$IncrementCountableCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of IncrementCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? context = null,
  }) {
    return _then(_$IncrementCountableCommandImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CountableData,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$IncrementCountableCommandImpl implements _IncrementCountableCommand {
  _$IncrementCountableCommandImpl({required this.data, required this.context});

  @override
  final CountableData data;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'IncrementCountableCommand(data: $data, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementCountableCommandImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, context);

  /// Create a copy of IncrementCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementCountableCommandImplCopyWith<_$IncrementCountableCommandImpl>
      get copyWith => __$$IncrementCountableCommandImplCopyWithImpl<
          _$IncrementCountableCommandImpl>(this, _$identity);
}

abstract class _IncrementCountableCommand implements IncrementCountableCommand {
  factory _IncrementCountableCommand(
      {required final CountableData data,
      required final BuildContext context}) = _$IncrementCountableCommandImpl;

  @override
  CountableData get data;
  @override
  BuildContext get context;

  /// Create a copy of IncrementCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementCountableCommandImplCopyWith<_$IncrementCountableCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
