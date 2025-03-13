// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendarevent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarEvent _$CalendarEventFromJson(Map<String, dynamic> json) {
  return _CalendarEvent.fromJson(json);
}

/// @nodoc
mixin _$CalendarEvent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  bool get isWholeDay => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CalendarEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime start,
      bool isWholeDay,
      DateTime? end,
      String? description});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? start = null,
    Object? isWholeDay = null,
    Object? end = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isWholeDay: null == isWholeDay
          ? _value.isWholeDay
          : isWholeDay // ignore: cast_nullable_to_non_nullable
              as bool,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarEventImplCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$$CalendarEventImplCopyWith(
          _$CalendarEventImpl value, $Res Function(_$CalendarEventImpl) then) =
      __$$CalendarEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime start,
      bool isWholeDay,
      DateTime? end,
      String? description});
}

/// @nodoc
class __$$CalendarEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$CalendarEventImpl>
    implements _$$CalendarEventImplCopyWith<$Res> {
  __$$CalendarEventImplCopyWithImpl(
      _$CalendarEventImpl _value, $Res Function(_$CalendarEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? start = null,
    Object? isWholeDay = null,
    Object? end = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CalendarEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isWholeDay: null == isWholeDay
          ? _value.isWholeDay
          : isWholeDay // ignore: cast_nullable_to_non_nullable
              as bool,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarEventImpl implements _CalendarEvent {
  _$CalendarEventImpl(
      {required this.id,
      required this.title,
      required this.start,
      required this.isWholeDay,
      this.end,
      this.description});

  factory _$CalendarEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarEventImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime start;
  @override
  final bool isWholeDay;
  @override
  final DateTime? end;
  @override
  final String? description;

  @override
  String toString() {
    return 'CalendarEvent(id: $id, title: $title, start: $start, isWholeDay: $isWholeDay, end: $end, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.isWholeDay, isWholeDay) ||
                other.isWholeDay == isWholeDay) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, start, isWholeDay, end, description);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventImplCopyWith<_$CalendarEventImpl> get copyWith =>
      __$$CalendarEventImplCopyWithImpl<_$CalendarEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarEventImplToJson(
      this,
    );
  }
}

abstract class _CalendarEvent implements CalendarEvent {
  factory _CalendarEvent(
      {required final String id,
      required final String title,
      required final DateTime start,
      required final bool isWholeDay,
      final DateTime? end,
      final String? description}) = _$CalendarEventImpl;

  factory _CalendarEvent.fromJson(Map<String, dynamic> json) =
      _$CalendarEventImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get start;
  @override
  bool get isWholeDay;
  @override
  DateTime? get end;
  @override
  String? get description;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarEventImplCopyWith<_$CalendarEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalendarEventBuilder _$CalendarEventBuilderFromJson(Map<String, dynamic> json) {
  return _CalendarEventBuilder.fromJson(json);
}

/// @nodoc
mixin _$CalendarEventBuilder {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  bool get isWholeDay => throw _privateConstructorUsedError;

  /// Serializes this CalendarEventBuilder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarEventBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarEventBuilderCopyWith<CalendarEventBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventBuilderCopyWith<$Res> {
  factory $CalendarEventBuilderCopyWith(CalendarEventBuilder value,
          $Res Function(CalendarEventBuilder) then) =
      _$CalendarEventBuilderCopyWithImpl<$Res, CalendarEventBuilder>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      DateTime? start,
      DateTime? end,
      bool isWholeDay});
}

/// @nodoc
class _$CalendarEventBuilderCopyWithImpl<$Res,
        $Val extends CalendarEventBuilder>
    implements $CalendarEventBuilderCopyWith<$Res> {
  _$CalendarEventBuilderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEventBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? isWholeDay = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isWholeDay: null == isWholeDay
          ? _value.isWholeDay
          : isWholeDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarEventBuilderImplCopyWith<$Res>
    implements $CalendarEventBuilderCopyWith<$Res> {
  factory _$$CalendarEventBuilderImplCopyWith(_$CalendarEventBuilderImpl value,
          $Res Function(_$CalendarEventBuilderImpl) then) =
      __$$CalendarEventBuilderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      DateTime? start,
      DateTime? end,
      bool isWholeDay});
}

/// @nodoc
class __$$CalendarEventBuilderImplCopyWithImpl<$Res>
    extends _$CalendarEventBuilderCopyWithImpl<$Res, _$CalendarEventBuilderImpl>
    implements _$$CalendarEventBuilderImplCopyWith<$Res> {
  __$$CalendarEventBuilderImplCopyWithImpl(_$CalendarEventBuilderImpl _value,
      $Res Function(_$CalendarEventBuilderImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEventBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? isWholeDay = null,
  }) {
    return _then(_$CalendarEventBuilderImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isWholeDay: null == isWholeDay
          ? _value.isWholeDay
          : isWholeDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarEventBuilderImpl implements _CalendarEventBuilder {
  _$CalendarEventBuilderImpl(
      {this.title,
      this.description,
      this.start,
      this.end,
      this.isWholeDay = false});

  factory _$CalendarEventBuilderImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarEventBuilderImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  @JsonKey()
  final bool isWholeDay;

  @override
  String toString() {
    return 'CalendarEventBuilder(title: $title, description: $description, start: $start, end: $end, isWholeDay: $isWholeDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventBuilderImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.isWholeDay, isWholeDay) ||
                other.isWholeDay == isWholeDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, start, end, isWholeDay);

  /// Create a copy of CalendarEventBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventBuilderImplCopyWith<_$CalendarEventBuilderImpl>
      get copyWith =>
          __$$CalendarEventBuilderImplCopyWithImpl<_$CalendarEventBuilderImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarEventBuilderImplToJson(
      this,
    );
  }
}

abstract class _CalendarEventBuilder implements CalendarEventBuilder {
  factory _CalendarEventBuilder(
      {final String? title,
      final String? description,
      final DateTime? start,
      final DateTime? end,
      final bool isWholeDay}) = _$CalendarEventBuilderImpl;

  factory _CalendarEventBuilder.fromJson(Map<String, dynamic> json) =
      _$CalendarEventBuilderImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  bool get isWholeDay;

  /// Create a copy of CalendarEventBuilder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarEventBuilderImplCopyWith<_$CalendarEventBuilderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
