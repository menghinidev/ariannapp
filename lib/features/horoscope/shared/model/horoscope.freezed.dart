// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'horoscope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimpleHoroscope {
  HoroscopeSign get sign => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get prediction => throw _privateConstructorUsedError;

  /// Create a copy of SimpleHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleHoroscopeCopyWith<SimpleHoroscope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleHoroscopeCopyWith<$Res> {
  factory $SimpleHoroscopeCopyWith(
          SimpleHoroscope value, $Res Function(SimpleHoroscope) then) =
      _$SimpleHoroscopeCopyWithImpl<$Res, SimpleHoroscope>;
  @useResult
  $Res call({HoroscopeSign sign, DateTime date, String prediction});
}

/// @nodoc
class _$SimpleHoroscopeCopyWithImpl<$Res, $Val extends SimpleHoroscope>
    implements $SimpleHoroscopeCopyWith<$Res> {
  _$SimpleHoroscopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sign = null,
    Object? date = null,
    Object? prediction = null,
  }) {
    return _then(_value.copyWith(
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as HoroscopeSign,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleHoroscopeImplCopyWith<$Res>
    implements $SimpleHoroscopeCopyWith<$Res> {
  factory _$$SimpleHoroscopeImplCopyWith(_$SimpleHoroscopeImpl value,
          $Res Function(_$SimpleHoroscopeImpl) then) =
      __$$SimpleHoroscopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HoroscopeSign sign, DateTime date, String prediction});
}

/// @nodoc
class __$$SimpleHoroscopeImplCopyWithImpl<$Res>
    extends _$SimpleHoroscopeCopyWithImpl<$Res, _$SimpleHoroscopeImpl>
    implements _$$SimpleHoroscopeImplCopyWith<$Res> {
  __$$SimpleHoroscopeImplCopyWithImpl(
      _$SimpleHoroscopeImpl _value, $Res Function(_$SimpleHoroscopeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sign = null,
    Object? date = null,
    Object? prediction = null,
  }) {
    return _then(_$SimpleHoroscopeImpl(
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as HoroscopeSign,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SimpleHoroscopeImpl implements _SimpleHoroscope {
  _$SimpleHoroscopeImpl(
      {required this.sign, required this.date, required this.prediction});

  @override
  final HoroscopeSign sign;
  @override
  final DateTime date;
  @override
  final String prediction;

  @override
  String toString() {
    return 'SimpleHoroscope(sign: $sign, date: $date, prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleHoroscopeImpl &&
            (identical(other.sign, sign) || other.sign == sign) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sign, date, prediction);

  /// Create a copy of SimpleHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleHoroscopeImplCopyWith<_$SimpleHoroscopeImpl> get copyWith =>
      __$$SimpleHoroscopeImplCopyWithImpl<_$SimpleHoroscopeImpl>(
          this, _$identity);
}

abstract class _SimpleHoroscope implements SimpleHoroscope {
  factory _SimpleHoroscope(
      {required final HoroscopeSign sign,
      required final DateTime date,
      required final String prediction}) = _$SimpleHoroscopeImpl;

  @override
  HoroscopeSign get sign;
  @override
  DateTime get date;
  @override
  String get prediction;

  /// Create a copy of SimpleHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleHoroscopeImplCopyWith<_$SimpleHoroscopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MonthlyHoroscope {
  SimpleHoroscope get data => throw _privateConstructorUsedError;
  List<DateTime> get standoutDays => throw _privateConstructorUsedError;
  List<DateTime> get challengingDays => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyHoroscopeCopyWith<MonthlyHoroscope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyHoroscopeCopyWith<$Res> {
  factory $MonthlyHoroscopeCopyWith(
          MonthlyHoroscope value, $Res Function(MonthlyHoroscope) then) =
      _$MonthlyHoroscopeCopyWithImpl<$Res, MonthlyHoroscope>;
  @useResult
  $Res call(
      {SimpleHoroscope data,
      List<DateTime> standoutDays,
      List<DateTime> challengingDays});

  $SimpleHoroscopeCopyWith<$Res> get data;
}

/// @nodoc
class _$MonthlyHoroscopeCopyWithImpl<$Res, $Val extends MonthlyHoroscope>
    implements $MonthlyHoroscopeCopyWith<$Res> {
  _$MonthlyHoroscopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? standoutDays = null,
    Object? challengingDays = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SimpleHoroscope,
      standoutDays: null == standoutDays
          ? _value.standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      challengingDays: null == challengingDays
          ? _value.challengingDays
          : challengingDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }

  /// Create a copy of MonthlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SimpleHoroscopeCopyWith<$Res> get data {
    return $SimpleHoroscopeCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonthlyHoroscopeImplCopyWith<$Res>
    implements $MonthlyHoroscopeCopyWith<$Res> {
  factory _$$MonthlyHoroscopeImplCopyWith(_$MonthlyHoroscopeImpl value,
          $Res Function(_$MonthlyHoroscopeImpl) then) =
      __$$MonthlyHoroscopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SimpleHoroscope data,
      List<DateTime> standoutDays,
      List<DateTime> challengingDays});

  @override
  $SimpleHoroscopeCopyWith<$Res> get data;
}

/// @nodoc
class __$$MonthlyHoroscopeImplCopyWithImpl<$Res>
    extends _$MonthlyHoroscopeCopyWithImpl<$Res, _$MonthlyHoroscopeImpl>
    implements _$$MonthlyHoroscopeImplCopyWith<$Res> {
  __$$MonthlyHoroscopeImplCopyWithImpl(_$MonthlyHoroscopeImpl _value,
      $Res Function(_$MonthlyHoroscopeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? standoutDays = null,
    Object? challengingDays = null,
  }) {
    return _then(_$MonthlyHoroscopeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SimpleHoroscope,
      standoutDays: null == standoutDays
          ? _value._standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      challengingDays: null == challengingDays
          ? _value._challengingDays
          : challengingDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$MonthlyHoroscopeImpl implements _MonthlyHoroscope {
  _$MonthlyHoroscopeImpl(
      {required this.data,
      required final List<DateTime> standoutDays,
      required final List<DateTime> challengingDays})
      : _standoutDays = standoutDays,
        _challengingDays = challengingDays;

  @override
  final SimpleHoroscope data;
  final List<DateTime> _standoutDays;
  @override
  List<DateTime> get standoutDays {
    if (_standoutDays is EqualUnmodifiableListView) return _standoutDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_standoutDays);
  }

  final List<DateTime> _challengingDays;
  @override
  List<DateTime> get challengingDays {
    if (_challengingDays is EqualUnmodifiableListView) return _challengingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challengingDays);
  }

  @override
  String toString() {
    return 'MonthlyHoroscope(data: $data, standoutDays: $standoutDays, challengingDays: $challengingDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyHoroscopeImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._standoutDays, _standoutDays) &&
            const DeepCollectionEquality()
                .equals(other._challengingDays, _challengingDays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(_standoutDays),
      const DeepCollectionEquality().hash(_challengingDays));

  /// Create a copy of MonthlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyHoroscopeImplCopyWith<_$MonthlyHoroscopeImpl> get copyWith =>
      __$$MonthlyHoroscopeImplCopyWithImpl<_$MonthlyHoroscopeImpl>(
          this, _$identity);
}

abstract class _MonthlyHoroscope implements MonthlyHoroscope {
  factory _MonthlyHoroscope(
      {required final SimpleHoroscope data,
      required final List<DateTime> standoutDays,
      required final List<DateTime> challengingDays}) = _$MonthlyHoroscopeImpl;

  @override
  SimpleHoroscope get data;
  @override
  List<DateTime> get standoutDays;
  @override
  List<DateTime> get challengingDays;

  /// Create a copy of MonthlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyHoroscopeImplCopyWith<_$MonthlyHoroscopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
