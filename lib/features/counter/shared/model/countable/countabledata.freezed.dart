// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countabledata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountableData _$CountableDataFromJson(Map<String, dynamic> json) {
  return _CountableData.fromJson(json);
}

/// @nodoc
mixin _$CountableData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;
  List<CountableEvent> get events => throw _privateConstructorUsedError;

  /// Serializes this CountableData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountableData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountableDataCopyWith<CountableData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountableDataCopyWith<$Res> {
  factory $CountableDataCopyWith(
          CountableData value, $Res Function(CountableData) then) =
      _$CountableDataCopyWithImpl<$Res, CountableData>;
  @useResult
  $Res call({String id, String name, int counter, List<CountableEvent> events});
}

/// @nodoc
class _$CountableDataCopyWithImpl<$Res, $Val extends CountableData>
    implements $CountableDataCopyWith<$Res> {
  _$CountableDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountableData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? counter = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CountableEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountableDataImplCopyWith<$Res>
    implements $CountableDataCopyWith<$Res> {
  factory _$$CountableDataImplCopyWith(
          _$CountableDataImpl value, $Res Function(_$CountableDataImpl) then) =
      __$$CountableDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int counter, List<CountableEvent> events});
}

/// @nodoc
class __$$CountableDataImplCopyWithImpl<$Res>
    extends _$CountableDataCopyWithImpl<$Res, _$CountableDataImpl>
    implements _$$CountableDataImplCopyWith<$Res> {
  __$$CountableDataImplCopyWithImpl(
      _$CountableDataImpl _value, $Res Function(_$CountableDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountableData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? counter = null,
    Object? events = null,
  }) {
    return _then(_$CountableDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CountableEvent>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CountableDataImpl implements _CountableData {
  _$CountableDataImpl(
      {required this.id,
      required this.name,
      required this.counter,
      final List<CountableEvent> events = const <CountableEvent>[]})
      : _events = events;

  factory _$CountableDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountableDataImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int counter;
  final List<CountableEvent> _events;
  @override
  @JsonKey()
  List<CountableEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'CountableData(id: $id, name: $name, counter: $counter, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountableDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.counter, counter) || other.counter == counter) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, counter,
      const DeepCollectionEquality().hash(_events));

  /// Create a copy of CountableData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountableDataImplCopyWith<_$CountableDataImpl> get copyWith =>
      __$$CountableDataImplCopyWithImpl<_$CountableDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountableDataImplToJson(
      this,
    );
  }
}

abstract class _CountableData implements CountableData {
  factory _CountableData(
      {required final String id,
      required final String name,
      required final int counter,
      final List<CountableEvent> events}) = _$CountableDataImpl;

  factory _CountableData.fromJson(Map<String, dynamic> json) =
      _$CountableDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get counter;
  @override
  List<CountableEvent> get events;

  /// Create a copy of CountableData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountableDataImplCopyWith<_$CountableDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountableEvent _$CountableEventFromJson(Map<String, dynamic> json) {
  return _CountableEvent.fromJson(json);
}

/// @nodoc
mixin _$CountableEvent {
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CountableEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountableEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountableEventCopyWith<CountableEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountableEventCopyWith<$Res> {
  factory $CountableEventCopyWith(
          CountableEvent value, $Res Function(CountableEvent) then) =
      _$CountableEventCopyWithImpl<$Res, CountableEvent>;
  @useResult
  $Res call({DateTime timestamp, String? description});
}

/// @nodoc
class _$CountableEventCopyWithImpl<$Res, $Val extends CountableEvent>
    implements $CountableEventCopyWith<$Res> {
  _$CountableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountableEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountableEventImplCopyWith<$Res>
    implements $CountableEventCopyWith<$Res> {
  factory _$$CountableEventImplCopyWith(_$CountableEventImpl value,
          $Res Function(_$CountableEventImpl) then) =
      __$$CountableEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime timestamp, String? description});
}

/// @nodoc
class __$$CountableEventImplCopyWithImpl<$Res>
    extends _$CountableEventCopyWithImpl<$Res, _$CountableEventImpl>
    implements _$$CountableEventImplCopyWith<$Res> {
  __$$CountableEventImplCopyWithImpl(
      _$CountableEventImpl _value, $Res Function(_$CountableEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountableEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? description = freezed,
  }) {
    return _then(_$CountableEventImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CountableEventImpl implements _CountableEvent {
  _$CountableEventImpl({required this.timestamp, this.description});

  factory _$CountableEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountableEventImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final String? description;

  @override
  String toString() {
    return 'CountableEvent(timestamp: $timestamp, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountableEventImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, description);

  /// Create a copy of CountableEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountableEventImplCopyWith<_$CountableEventImpl> get copyWith =>
      __$$CountableEventImplCopyWithImpl<_$CountableEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountableEventImplToJson(
      this,
    );
  }
}

abstract class _CountableEvent implements CountableEvent {
  factory _CountableEvent(
      {required final DateTime timestamp,
      final String? description}) = _$CountableEventImpl;

  factory _CountableEvent.fromJson(Map<String, dynamic> json) =
      _$CountableEventImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  String? get description;

  /// Create a copy of CountableEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountableEventImplCopyWith<_$CountableEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountableDataBuilder _$CountableDataBuilderFromJson(Map<String, dynamic> json) {
  return _CountableDataBuilder.fromJson(json);
}

/// @nodoc
mixin _$CountableDataBuilder {
  String? get name => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;
  List<CountableEvent> get events => throw _privateConstructorUsedError;

  /// Serializes this CountableDataBuilder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountableDataBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountableDataBuilderCopyWith<CountableDataBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountableDataBuilderCopyWith<$Res> {
  factory $CountableDataBuilderCopyWith(CountableDataBuilder value,
          $Res Function(CountableDataBuilder) then) =
      _$CountableDataBuilderCopyWithImpl<$Res, CountableDataBuilder>;
  @useResult
  $Res call({String? name, int counter, List<CountableEvent> events});
}

/// @nodoc
class _$CountableDataBuilderCopyWithImpl<$Res,
        $Val extends CountableDataBuilder>
    implements $CountableDataBuilderCopyWith<$Res> {
  _$CountableDataBuilderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountableDataBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? counter = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CountableEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountableDataBuilderImplCopyWith<$Res>
    implements $CountableDataBuilderCopyWith<$Res> {
  factory _$$CountableDataBuilderImplCopyWith(_$CountableDataBuilderImpl value,
          $Res Function(_$CountableDataBuilderImpl) then) =
      __$$CountableDataBuilderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int counter, List<CountableEvent> events});
}

/// @nodoc
class __$$CountableDataBuilderImplCopyWithImpl<$Res>
    extends _$CountableDataBuilderCopyWithImpl<$Res, _$CountableDataBuilderImpl>
    implements _$$CountableDataBuilderImplCopyWith<$Res> {
  __$$CountableDataBuilderImplCopyWithImpl(_$CountableDataBuilderImpl _value,
      $Res Function(_$CountableDataBuilderImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountableDataBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? counter = null,
    Object? events = null,
  }) {
    return _then(_$CountableDataBuilderImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CountableEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountableDataBuilderImpl implements _CountableDataBuilder {
  _$CountableDataBuilderImpl(
      {this.name,
      this.counter = 0,
      final List<CountableEvent> events = const <CountableEvent>[]})
      : _events = events;

  factory _$CountableDataBuilderImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountableDataBuilderImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey()
  final int counter;
  final List<CountableEvent> _events;
  @override
  @JsonKey()
  List<CountableEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'CountableDataBuilder(name: $name, counter: $counter, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountableDataBuilderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.counter, counter) || other.counter == counter) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, counter, const DeepCollectionEquality().hash(_events));

  /// Create a copy of CountableDataBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountableDataBuilderImplCopyWith<_$CountableDataBuilderImpl>
      get copyWith =>
          __$$CountableDataBuilderImplCopyWithImpl<_$CountableDataBuilderImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountableDataBuilderImplToJson(
      this,
    );
  }
}

abstract class _CountableDataBuilder implements CountableDataBuilder {
  factory _CountableDataBuilder(
      {final String? name,
      final int counter,
      final List<CountableEvent> events}) = _$CountableDataBuilderImpl;

  factory _CountableDataBuilder.fromJson(Map<String, dynamic> json) =
      _$CountableDataBuilderImpl.fromJson;

  @override
  String? get name;
  @override
  int get counter;
  @override
  List<CountableEvent> get events;

  /// Create a copy of CountableDataBuilder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountableDataBuilderImplCopyWith<_$CountableDataBuilderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
