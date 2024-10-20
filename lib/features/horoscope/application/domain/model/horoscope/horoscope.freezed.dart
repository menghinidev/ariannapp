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
mixin _$MontlyHoroscope {
  String get data => throw _privateConstructorUsedError;
  List<DateTime> get challengingDays => throw _privateConstructorUsedError;
  List<DateTime> get standoutDays => throw _privateConstructorUsedError;
  DateTime get month => throw _privateConstructorUsedError;

  /// Create a copy of MontlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MontlyHoroscopeCopyWith<MontlyHoroscope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MontlyHoroscopeCopyWith<$Res> {
  factory $MontlyHoroscopeCopyWith(
          MontlyHoroscope value, $Res Function(MontlyHoroscope) then) =
      _$MontlyHoroscopeCopyWithImpl<$Res, MontlyHoroscope>;
  @useResult
  $Res call(
      {String data,
      List<DateTime> challengingDays,
      List<DateTime> standoutDays,
      DateTime month});
}

/// @nodoc
class _$MontlyHoroscopeCopyWithImpl<$Res, $Val extends MontlyHoroscope>
    implements $MontlyHoroscopeCopyWith<$Res> {
  _$MontlyHoroscopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MontlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? challengingDays = null,
    Object? standoutDays = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      challengingDays: null == challengingDays
          ? _value.challengingDays
          : challengingDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      standoutDays: null == standoutDays
          ? _value.standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MontlyHoroscopeImplCopyWith<$Res>
    implements $MontlyHoroscopeCopyWith<$Res> {
  factory _$$MontlyHoroscopeImplCopyWith(_$MontlyHoroscopeImpl value,
          $Res Function(_$MontlyHoroscopeImpl) then) =
      __$$MontlyHoroscopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String data,
      List<DateTime> challengingDays,
      List<DateTime> standoutDays,
      DateTime month});
}

/// @nodoc
class __$$MontlyHoroscopeImplCopyWithImpl<$Res>
    extends _$MontlyHoroscopeCopyWithImpl<$Res, _$MontlyHoroscopeImpl>
    implements _$$MontlyHoroscopeImplCopyWith<$Res> {
  __$$MontlyHoroscopeImplCopyWithImpl(
      _$MontlyHoroscopeImpl _value, $Res Function(_$MontlyHoroscopeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MontlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? challengingDays = null,
    Object? standoutDays = null,
    Object? month = null,
  }) {
    return _then(_$MontlyHoroscopeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      challengingDays: null == challengingDays
          ? _value._challengingDays
          : challengingDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      standoutDays: null == standoutDays
          ? _value._standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MontlyHoroscopeImpl implements _MontlyHoroscope {
  _$MontlyHoroscopeImpl(
      {required this.data,
      required final List<DateTime> challengingDays,
      required final List<DateTime> standoutDays,
      required this.month})
      : _challengingDays = challengingDays,
        _standoutDays = standoutDays;

  @override
  final String data;
  final List<DateTime> _challengingDays;
  @override
  List<DateTime> get challengingDays {
    if (_challengingDays is EqualUnmodifiableListView) return _challengingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challengingDays);
  }

  final List<DateTime> _standoutDays;
  @override
  List<DateTime> get standoutDays {
    if (_standoutDays is EqualUnmodifiableListView) return _standoutDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_standoutDays);
  }

  @override
  final DateTime month;

  @override
  String toString() {
    return 'MontlyHoroscope(data: $data, challengingDays: $challengingDays, standoutDays: $standoutDays, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MontlyHoroscopeImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._challengingDays, _challengingDays) &&
            const DeepCollectionEquality()
                .equals(other._standoutDays, _standoutDays) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(_challengingDays),
      const DeepCollectionEquality().hash(_standoutDays),
      month);

  /// Create a copy of MontlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MontlyHoroscopeImplCopyWith<_$MontlyHoroscopeImpl> get copyWith =>
      __$$MontlyHoroscopeImplCopyWithImpl<_$MontlyHoroscopeImpl>(
          this, _$identity);
}

abstract class _MontlyHoroscope implements MontlyHoroscope {
  factory _MontlyHoroscope(
      {required final String data,
      required final List<DateTime> challengingDays,
      required final List<DateTime> standoutDays,
      required final DateTime month}) = _$MontlyHoroscopeImpl;

  @override
  String get data;
  @override
  List<DateTime> get challengingDays;
  @override
  List<DateTime> get standoutDays;
  @override
  DateTime get month;

  /// Create a copy of MontlyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MontlyHoroscopeImplCopyWith<_$MontlyHoroscopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DailyHoroscope {
  String get data => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Create a copy of DailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyHoroscopeCopyWith<DailyHoroscope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyHoroscopeCopyWith<$Res> {
  factory $DailyHoroscopeCopyWith(
          DailyHoroscope value, $Res Function(DailyHoroscope) then) =
      _$DailyHoroscopeCopyWithImpl<$Res, DailyHoroscope>;
  @useResult
  $Res call({String data, DateTime date});
}

/// @nodoc
class _$DailyHoroscopeCopyWithImpl<$Res, $Val extends DailyHoroscope>
    implements $DailyHoroscopeCopyWith<$Res> {
  _$DailyHoroscopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyHoroscopeImplCopyWith<$Res>
    implements $DailyHoroscopeCopyWith<$Res> {
  factory _$$DailyHoroscopeImplCopyWith(_$DailyHoroscopeImpl value,
          $Res Function(_$DailyHoroscopeImpl) then) =
      __$$DailyHoroscopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, DateTime date});
}

/// @nodoc
class __$$DailyHoroscopeImplCopyWithImpl<$Res>
    extends _$DailyHoroscopeCopyWithImpl<$Res, _$DailyHoroscopeImpl>
    implements _$$DailyHoroscopeImplCopyWith<$Res> {
  __$$DailyHoroscopeImplCopyWithImpl(
      _$DailyHoroscopeImpl _value, $Res Function(_$DailyHoroscopeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? date = null,
  }) {
    return _then(_$DailyHoroscopeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DailyHoroscopeImpl implements _DailyHoroscope {
  _$DailyHoroscopeImpl({required this.data, required this.date});

  @override
  final String data;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'DailyHoroscope(data: $data, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyHoroscopeImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, date);

  /// Create a copy of DailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyHoroscopeImplCopyWith<_$DailyHoroscopeImpl> get copyWith =>
      __$$DailyHoroscopeImplCopyWithImpl<_$DailyHoroscopeImpl>(
          this, _$identity);
}

abstract class _DailyHoroscope implements DailyHoroscope {
  factory _DailyHoroscope(
      {required final String data,
      required final DateTime date}) = _$DailyHoroscopeImpl;

  @override
  String get data;
  @override
  DateTime get date;

  /// Create a copy of DailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyHoroscopeImplCopyWith<_$DailyHoroscopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
