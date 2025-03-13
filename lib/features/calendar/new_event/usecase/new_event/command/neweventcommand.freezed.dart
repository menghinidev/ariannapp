// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'neweventcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewEventCommand {
  BuildContext get context => throw _privateConstructorUsedError;
  CalendarEventBuilder get event => throw _privateConstructorUsedError;

  /// Create a copy of NewEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewEventCommandCopyWith<NewEventCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewEventCommandCopyWith<$Res> {
  factory $NewEventCommandCopyWith(
          NewEventCommand value, $Res Function(NewEventCommand) then) =
      _$NewEventCommandCopyWithImpl<$Res, NewEventCommand>;
  @useResult
  $Res call({BuildContext context, CalendarEventBuilder event});

  $CalendarEventBuilderCopyWith<$Res> get event;
}

/// @nodoc
class _$NewEventCommandCopyWithImpl<$Res, $Val extends NewEventCommand>
    implements $NewEventCommandCopyWith<$Res> {
  _$NewEventCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CalendarEventBuilder,
    ) as $Val);
  }

  /// Create a copy of NewEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CalendarEventBuilderCopyWith<$Res> get event {
    return $CalendarEventBuilderCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewEventCommandImplCopyWith<$Res>
    implements $NewEventCommandCopyWith<$Res> {
  factory _$$NewEventCommandImplCopyWith(_$NewEventCommandImpl value,
          $Res Function(_$NewEventCommandImpl) then) =
      __$$NewEventCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, CalendarEventBuilder event});

  @override
  $CalendarEventBuilderCopyWith<$Res> get event;
}

/// @nodoc
class __$$NewEventCommandImplCopyWithImpl<$Res>
    extends _$NewEventCommandCopyWithImpl<$Res, _$NewEventCommandImpl>
    implements _$$NewEventCommandImplCopyWith<$Res> {
  __$$NewEventCommandImplCopyWithImpl(
      _$NewEventCommandImpl _value, $Res Function(_$NewEventCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? event = null,
  }) {
    return _then(_$NewEventCommandImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CalendarEventBuilder,
    ));
  }
}

/// @nodoc

class _$NewEventCommandImpl implements _NewEventCommand {
  _$NewEventCommandImpl({required this.context, required this.event});

  @override
  final BuildContext context;
  @override
  final CalendarEventBuilder event;

  @override
  String toString() {
    return 'NewEventCommand(context: $context, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewEventCommandImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, event);

  /// Create a copy of NewEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewEventCommandImplCopyWith<_$NewEventCommandImpl> get copyWith =>
      __$$NewEventCommandImplCopyWithImpl<_$NewEventCommandImpl>(
          this, _$identity);
}

abstract class _NewEventCommand implements NewEventCommand {
  factory _NewEventCommand(
      {required final BuildContext context,
      required final CalendarEventBuilder event}) = _$NewEventCommandImpl;

  @override
  BuildContext get context;
  @override
  CalendarEventBuilder get event;

  /// Create a copy of NewEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewEventCommandImplCopyWith<_$NewEventCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
