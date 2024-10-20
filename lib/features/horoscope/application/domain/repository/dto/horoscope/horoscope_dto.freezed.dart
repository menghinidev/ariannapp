// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'horoscope_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MontlyHoroscopeDTO _$MontlyHoroscopeDTOFromJson(Map<String, dynamic> json) {
  return _MontlyHoroscopeDTO.fromJson(json);
}

/// @nodoc
mixin _$MontlyHoroscopeDTO {
  @JsonKey(name: 'horoscope_data')
  String get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'challenging_days')
  String get challengingDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'standout_days')
  String get standoutDays => throw _privateConstructorUsedError;
  @_MonthDateConverter()
  DateTime get month => throw _privateConstructorUsedError;

  /// Serializes this MontlyHoroscopeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MontlyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MontlyHoroscopeDTOCopyWith<MontlyHoroscopeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MontlyHoroscopeDTOCopyWith<$Res> {
  factory $MontlyHoroscopeDTOCopyWith(
          MontlyHoroscopeDTO value, $Res Function(MontlyHoroscopeDTO) then) =
      _$MontlyHoroscopeDTOCopyWithImpl<$Res, MontlyHoroscopeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'horoscope_data') String data,
      @JsonKey(name: 'challenging_days') String challengingDays,
      @JsonKey(name: 'standout_days') String standoutDays,
      @_MonthDateConverter() DateTime month});
}

/// @nodoc
class _$MontlyHoroscopeDTOCopyWithImpl<$Res, $Val extends MontlyHoroscopeDTO>
    implements $MontlyHoroscopeDTOCopyWith<$Res> {
  _$MontlyHoroscopeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MontlyHoroscopeDTO
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
              as String,
      standoutDays: null == standoutDays
          ? _value.standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MontlyHoroscopeDTOImplCopyWith<$Res>
    implements $MontlyHoroscopeDTOCopyWith<$Res> {
  factory _$$MontlyHoroscopeDTOImplCopyWith(_$MontlyHoroscopeDTOImpl value,
          $Res Function(_$MontlyHoroscopeDTOImpl) then) =
      __$$MontlyHoroscopeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'horoscope_data') String data,
      @JsonKey(name: 'challenging_days') String challengingDays,
      @JsonKey(name: 'standout_days') String standoutDays,
      @_MonthDateConverter() DateTime month});
}

/// @nodoc
class __$$MontlyHoroscopeDTOImplCopyWithImpl<$Res>
    extends _$MontlyHoroscopeDTOCopyWithImpl<$Res, _$MontlyHoroscopeDTOImpl>
    implements _$$MontlyHoroscopeDTOImplCopyWith<$Res> {
  __$$MontlyHoroscopeDTOImplCopyWithImpl(_$MontlyHoroscopeDTOImpl _value,
      $Res Function(_$MontlyHoroscopeDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MontlyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? challengingDays = null,
    Object? standoutDays = null,
    Object? month = null,
  }) {
    return _then(_$MontlyHoroscopeDTOImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      challengingDays: null == challengingDays
          ? _value.challengingDays
          : challengingDays // ignore: cast_nullable_to_non_nullable
              as String,
      standoutDays: null == standoutDays
          ? _value.standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MontlyHoroscopeDTOImpl implements _MontlyHoroscopeDTO {
  _$MontlyHoroscopeDTOImpl(
      {@JsonKey(name: 'horoscope_data') required this.data,
      @JsonKey(name: 'challenging_days') required this.challengingDays,
      @JsonKey(name: 'standout_days') required this.standoutDays,
      @_MonthDateConverter() required this.month});

  factory _$MontlyHoroscopeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MontlyHoroscopeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'horoscope_data')
  final String data;
  @override
  @JsonKey(name: 'challenging_days')
  final String challengingDays;
  @override
  @JsonKey(name: 'standout_days')
  final String standoutDays;
  @override
  @_MonthDateConverter()
  final DateTime month;

  @override
  String toString() {
    return 'MontlyHoroscopeDTO(data: $data, challengingDays: $challengingDays, standoutDays: $standoutDays, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MontlyHoroscopeDTOImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.challengingDays, challengingDays) ||
                other.challengingDays == challengingDays) &&
            (identical(other.standoutDays, standoutDays) ||
                other.standoutDays == standoutDays) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, challengingDays, standoutDays, month);

  /// Create a copy of MontlyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MontlyHoroscopeDTOImplCopyWith<_$MontlyHoroscopeDTOImpl> get copyWith =>
      __$$MontlyHoroscopeDTOImplCopyWithImpl<_$MontlyHoroscopeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MontlyHoroscopeDTOImplToJson(
      this,
    );
  }
}

abstract class _MontlyHoroscopeDTO implements MontlyHoroscopeDTO {
  factory _MontlyHoroscopeDTO(
      {@JsonKey(name: 'horoscope_data') required final String data,
      @JsonKey(name: 'challenging_days') required final String challengingDays,
      @JsonKey(name: 'standout_days') required final String standoutDays,
      @_MonthDateConverter()
      required final DateTime month}) = _$MontlyHoroscopeDTOImpl;

  factory _MontlyHoroscopeDTO.fromJson(Map<String, dynamic> json) =
      _$MontlyHoroscopeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'horoscope_data')
  String get data;
  @override
  @JsonKey(name: 'challenging_days')
  String get challengingDays;
  @override
  @JsonKey(name: 'standout_days')
  String get standoutDays;
  @override
  @_MonthDateConverter()
  DateTime get month;

  /// Create a copy of MontlyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MontlyHoroscopeDTOImplCopyWith<_$MontlyHoroscopeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyHoroscopeDTO _$DailyHoroscopeDTOFromJson(Map<String, dynamic> json) {
  return _DailyHoroscopeDTO.fromJson(json);
}

/// @nodoc
mixin _$DailyHoroscopeDTO {
  @JsonKey(name: 'horoscope_data')
  String get data => throw _privateConstructorUsedError;
  @_DailyDateConverter()
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this DailyHoroscopeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyHoroscopeDTOCopyWith<DailyHoroscopeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyHoroscopeDTOCopyWith<$Res> {
  factory $DailyHoroscopeDTOCopyWith(
          DailyHoroscopeDTO value, $Res Function(DailyHoroscopeDTO) then) =
      _$DailyHoroscopeDTOCopyWithImpl<$Res, DailyHoroscopeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'horoscope_data') String data,
      @_DailyDateConverter() DateTime date});
}

/// @nodoc
class _$DailyHoroscopeDTOCopyWithImpl<$Res, $Val extends DailyHoroscopeDTO>
    implements $DailyHoroscopeDTOCopyWith<$Res> {
  _$DailyHoroscopeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyHoroscopeDTO
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
abstract class _$$DailyHoroscopeDTOImplCopyWith<$Res>
    implements $DailyHoroscopeDTOCopyWith<$Res> {
  factory _$$DailyHoroscopeDTOImplCopyWith(_$DailyHoroscopeDTOImpl value,
          $Res Function(_$DailyHoroscopeDTOImpl) then) =
      __$$DailyHoroscopeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'horoscope_data') String data,
      @_DailyDateConverter() DateTime date});
}

/// @nodoc
class __$$DailyHoroscopeDTOImplCopyWithImpl<$Res>
    extends _$DailyHoroscopeDTOCopyWithImpl<$Res, _$DailyHoroscopeDTOImpl>
    implements _$$DailyHoroscopeDTOImplCopyWith<$Res> {
  __$$DailyHoroscopeDTOImplCopyWithImpl(_$DailyHoroscopeDTOImpl _value,
      $Res Function(_$DailyHoroscopeDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? date = null,
  }) {
    return _then(_$DailyHoroscopeDTOImpl(
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

@JsonSerializable(explicitToJson: true)
class _$DailyHoroscopeDTOImpl implements _DailyHoroscopeDTO {
  _$DailyHoroscopeDTOImpl(
      {@JsonKey(name: 'horoscope_data') required this.data,
      @_DailyDateConverter() required this.date});

  factory _$DailyHoroscopeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyHoroscopeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'horoscope_data')
  final String data;
  @override
  @_DailyDateConverter()
  final DateTime date;

  @override
  String toString() {
    return 'DailyHoroscopeDTO(data: $data, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyHoroscopeDTOImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, date);

  /// Create a copy of DailyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyHoroscopeDTOImplCopyWith<_$DailyHoroscopeDTOImpl> get copyWith =>
      __$$DailyHoroscopeDTOImplCopyWithImpl<_$DailyHoroscopeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyHoroscopeDTOImplToJson(
      this,
    );
  }
}

abstract class _DailyHoroscopeDTO implements DailyHoroscopeDTO {
  factory _DailyHoroscopeDTO(
          {@JsonKey(name: 'horoscope_data') required final String data,
          @_DailyDateConverter() required final DateTime date}) =
      _$DailyHoroscopeDTOImpl;

  factory _DailyHoroscopeDTO.fromJson(Map<String, dynamic> json) =
      _$DailyHoroscopeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'horoscope_data')
  String get data;
  @override
  @_DailyDateConverter()
  DateTime get date;

  /// Create a copy of DailyHoroscopeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyHoroscopeDTOImplCopyWith<_$DailyHoroscopeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
