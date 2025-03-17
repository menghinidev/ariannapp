// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'createcountablecommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateCountableCommand {
  CountableDataBuilder get data => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of CreateCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCountableCommandCopyWith<CreateCountableCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCountableCommandCopyWith<$Res> {
  factory $CreateCountableCommandCopyWith(CreateCountableCommand value,
          $Res Function(CreateCountableCommand) then) =
      _$CreateCountableCommandCopyWithImpl<$Res, CreateCountableCommand>;
  @useResult
  $Res call({CountableDataBuilder data, BuildContext context});

  $CountableDataBuilderCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateCountableCommandCopyWithImpl<$Res,
        $Val extends CreateCountableCommand>
    implements $CreateCountableCommandCopyWith<$Res> {
  _$CreateCountableCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCountableCommand
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
              as CountableDataBuilder,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  /// Create a copy of CreateCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountableDataBuilderCopyWith<$Res> get data {
    return $CountableDataBuilderCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCountableCommandImplCopyWith<$Res>
    implements $CreateCountableCommandCopyWith<$Res> {
  factory _$$CreateCountableCommandImplCopyWith(
          _$CreateCountableCommandImpl value,
          $Res Function(_$CreateCountableCommandImpl) then) =
      __$$CreateCountableCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountableDataBuilder data, BuildContext context});

  @override
  $CountableDataBuilderCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateCountableCommandImplCopyWithImpl<$Res>
    extends _$CreateCountableCommandCopyWithImpl<$Res,
        _$CreateCountableCommandImpl>
    implements _$$CreateCountableCommandImplCopyWith<$Res> {
  __$$CreateCountableCommandImplCopyWithImpl(
      _$CreateCountableCommandImpl _value,
      $Res Function(_$CreateCountableCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? context = null,
  }) {
    return _then(_$CreateCountableCommandImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CountableDataBuilder,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$CreateCountableCommandImpl implements _CreateCountableCommand {
  _$CreateCountableCommandImpl({required this.data, required this.context});

  @override
  final CountableDataBuilder data;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateCountableCommand(data: $data, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCountableCommandImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, context);

  /// Create a copy of CreateCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCountableCommandImplCopyWith<_$CreateCountableCommandImpl>
      get copyWith => __$$CreateCountableCommandImplCopyWithImpl<
          _$CreateCountableCommandImpl>(this, _$identity);
}

abstract class _CreateCountableCommand implements CreateCountableCommand {
  factory _CreateCountableCommand(
      {required final CountableDataBuilder data,
      required final BuildContext context}) = _$CreateCountableCommandImpl;

  @override
  CountableDataBuilder get data;
  @override
  BuildContext get context;

  /// Create a copy of CreateCountableCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCountableCommandImplCopyWith<_$CreateCountableCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
