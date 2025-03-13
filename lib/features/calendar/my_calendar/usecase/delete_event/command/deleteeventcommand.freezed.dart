// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deleteeventcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteEventCommand {
  BuildContext get context => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;

  /// Create a copy of DeleteEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteEventCommandCopyWith<DeleteEventCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteEventCommandCopyWith<$Res> {
  factory $DeleteEventCommandCopyWith(
          DeleteEventCommand value, $Res Function(DeleteEventCommand) then) =
      _$DeleteEventCommandCopyWithImpl<$Res, DeleteEventCommand>;
  @useResult
  $Res call({BuildContext context, String eventId});
}

/// @nodoc
class _$DeleteEventCommandCopyWithImpl<$Res, $Val extends DeleteEventCommand>
    implements $DeleteEventCommandCopyWith<$Res> {
  _$DeleteEventCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteEventCommandImplCopyWith<$Res>
    implements $DeleteEventCommandCopyWith<$Res> {
  factory _$$DeleteEventCommandImplCopyWith(_$DeleteEventCommandImpl value,
          $Res Function(_$DeleteEventCommandImpl) then) =
      __$$DeleteEventCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String eventId});
}

/// @nodoc
class __$$DeleteEventCommandImplCopyWithImpl<$Res>
    extends _$DeleteEventCommandCopyWithImpl<$Res, _$DeleteEventCommandImpl>
    implements _$$DeleteEventCommandImplCopyWith<$Res> {
  __$$DeleteEventCommandImplCopyWithImpl(_$DeleteEventCommandImpl _value,
      $Res Function(_$DeleteEventCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? eventId = null,
  }) {
    return _then(_$DeleteEventCommandImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteEventCommandImpl implements _DeleteEventCommand {
  _$DeleteEventCommandImpl({required this.context, required this.eventId});

  @override
  final BuildContext context;
  @override
  final String eventId;

  @override
  String toString() {
    return 'DeleteEventCommand(context: $context, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventCommandImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, eventId);

  /// Create a copy of DeleteEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventCommandImplCopyWith<_$DeleteEventCommandImpl> get copyWith =>
      __$$DeleteEventCommandImplCopyWithImpl<_$DeleteEventCommandImpl>(
          this, _$identity);
}

abstract class _DeleteEventCommand implements DeleteEventCommand {
  factory _DeleteEventCommand(
      {required final BuildContext context,
      required final String eventId}) = _$DeleteEventCommandImpl;

  @override
  BuildContext get context;
  @override
  String get eventId;

  /// Create a copy of DeleteEventCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEventCommandImplCopyWith<_$DeleteEventCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
