// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendareventbuilder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEventBuilder {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get day => throw _privateConstructorUsedError;
  TimeOfDay? get time => throw _privateConstructorUsedError;
  bool get isWholeDay => throw _privateConstructorUsedError;

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
      DateTime? day,
      TimeOfDay? time,
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
    Object? day = freezed,
    Object? time = freezed,
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
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
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
      DateTime? day,
      TimeOfDay? time,
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
    Object? day = freezed,
    Object? time = freezed,
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
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      isWholeDay: null == isWholeDay
          ? _value.isWholeDay
          : isWholeDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CalendarEventBuilderImpl implements _CalendarEventBuilder {
  _$CalendarEventBuilderImpl(
      {this.title,
      this.description,
      this.day,
      this.time,
      this.isWholeDay = false});

  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? day;
  @override
  final TimeOfDay? time;
  @override
  @JsonKey()
  final bool isWholeDay;

  @override
  String toString() {
    return 'CalendarEventBuilder(title: $title, description: $description, day: $day, time: $time, isWholeDay: $isWholeDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventBuilderImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isWholeDay, isWholeDay) ||
                other.isWholeDay == isWholeDay));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, day, time, isWholeDay);

  /// Create a copy of CalendarEventBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventBuilderImplCopyWith<_$CalendarEventBuilderImpl>
      get copyWith =>
          __$$CalendarEventBuilderImplCopyWithImpl<_$CalendarEventBuilderImpl>(
              this, _$identity);
}

abstract class _CalendarEventBuilder implements CalendarEventBuilder {
  factory _CalendarEventBuilder(
      {final String? title,
      final String? description,
      final DateTime? day,
      final TimeOfDay? time,
      final bool isWholeDay}) = _$CalendarEventBuilderImpl;

  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get day;
  @override
  TimeOfDay? get time;
  @override
  bool get isWholeDay;

  /// Create a copy of CalendarEventBuilder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarEventBuilderImplCopyWith<_$CalendarEventBuilderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
