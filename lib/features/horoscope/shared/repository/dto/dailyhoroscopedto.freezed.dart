// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dailyhoroscopedto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VercelDailyHoroscopeDto _$VercelDailyHoroscopeDtoFromJson(
    Map<String, dynamic> json) {
  return _VercelDailyHoroscopeDto.fromJson(json);
}

/// @nodoc
mixin _$VercelDailyHoroscopeDto {
  @JsonKey(name: 'horoscope_data')
  String get prediction => throw _privateConstructorUsedError;

  /// Serializes this VercelDailyHoroscopeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VercelDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VercelDailyHoroscopeDtoCopyWith<VercelDailyHoroscopeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VercelDailyHoroscopeDtoCopyWith<$Res> {
  factory $VercelDailyHoroscopeDtoCopyWith(VercelDailyHoroscopeDto value,
          $Res Function(VercelDailyHoroscopeDto) then) =
      _$VercelDailyHoroscopeDtoCopyWithImpl<$Res, VercelDailyHoroscopeDto>;
  @useResult
  $Res call({@JsonKey(name: 'horoscope_data') String prediction});
}

/// @nodoc
class _$VercelDailyHoroscopeDtoCopyWithImpl<$Res,
        $Val extends VercelDailyHoroscopeDto>
    implements $VercelDailyHoroscopeDtoCopyWith<$Res> {
  _$VercelDailyHoroscopeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VercelDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prediction = null,
  }) {
    return _then(_value.copyWith(
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VercelDailyHoroscopeDtoImplCopyWith<$Res>
    implements $VercelDailyHoroscopeDtoCopyWith<$Res> {
  factory _$$VercelDailyHoroscopeDtoImplCopyWith(
          _$VercelDailyHoroscopeDtoImpl value,
          $Res Function(_$VercelDailyHoroscopeDtoImpl) then) =
      __$$VercelDailyHoroscopeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'horoscope_data') String prediction});
}

/// @nodoc
class __$$VercelDailyHoroscopeDtoImplCopyWithImpl<$Res>
    extends _$VercelDailyHoroscopeDtoCopyWithImpl<$Res,
        _$VercelDailyHoroscopeDtoImpl>
    implements _$$VercelDailyHoroscopeDtoImplCopyWith<$Res> {
  __$$VercelDailyHoroscopeDtoImplCopyWithImpl(
      _$VercelDailyHoroscopeDtoImpl _value,
      $Res Function(_$VercelDailyHoroscopeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VercelDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prediction = null,
  }) {
    return _then(_$VercelDailyHoroscopeDtoImpl(
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VercelDailyHoroscopeDtoImpl implements _VercelDailyHoroscopeDto {
  _$VercelDailyHoroscopeDtoImpl(
      {@JsonKey(name: 'horoscope_data') required this.prediction});

  factory _$VercelDailyHoroscopeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VercelDailyHoroscopeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'horoscope_data')
  final String prediction;

  @override
  String toString() {
    return 'VercelDailyHoroscopeDto(prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VercelDailyHoroscopeDtoImpl &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prediction);

  /// Create a copy of VercelDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VercelDailyHoroscopeDtoImplCopyWith<_$VercelDailyHoroscopeDtoImpl>
      get copyWith => __$$VercelDailyHoroscopeDtoImplCopyWithImpl<
          _$VercelDailyHoroscopeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VercelDailyHoroscopeDtoImplToJson(
      this,
    );
  }
}

abstract class _VercelDailyHoroscopeDto implements VercelDailyHoroscopeDto {
  factory _VercelDailyHoroscopeDto(
          {@JsonKey(name: 'horoscope_data') required final String prediction}) =
      _$VercelDailyHoroscopeDtoImpl;

  factory _VercelDailyHoroscopeDto.fromJson(Map<String, dynamic> json) =
      _$VercelDailyHoroscopeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'horoscope_data')
  String get prediction;

  /// Create a copy of VercelDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VercelDailyHoroscopeDtoImplCopyWith<_$VercelDailyHoroscopeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VercelWeeklyHoroscopeDto _$VercelWeeklyHoroscopeDtoFromJson(
    Map<String, dynamic> json) {
  return _VercelWeeklyHoroscopeDto.fromJson(json);
}

/// @nodoc
mixin _$VercelWeeklyHoroscopeDto {
  @JsonKey(name: 'horoscope_data')
  String get prediction => throw _privateConstructorUsedError;

  /// Serializes this VercelWeeklyHoroscopeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VercelWeeklyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VercelWeeklyHoroscopeDtoCopyWith<VercelWeeklyHoroscopeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VercelWeeklyHoroscopeDtoCopyWith<$Res> {
  factory $VercelWeeklyHoroscopeDtoCopyWith(VercelWeeklyHoroscopeDto value,
          $Res Function(VercelWeeklyHoroscopeDto) then) =
      _$VercelWeeklyHoroscopeDtoCopyWithImpl<$Res, VercelWeeklyHoroscopeDto>;
  @useResult
  $Res call({@JsonKey(name: 'horoscope_data') String prediction});
}

/// @nodoc
class _$VercelWeeklyHoroscopeDtoCopyWithImpl<$Res,
        $Val extends VercelWeeklyHoroscopeDto>
    implements $VercelWeeklyHoroscopeDtoCopyWith<$Res> {
  _$VercelWeeklyHoroscopeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VercelWeeklyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prediction = null,
  }) {
    return _then(_value.copyWith(
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VercelWeeklyHoroscopeDtoImplCopyWith<$Res>
    implements $VercelWeeklyHoroscopeDtoCopyWith<$Res> {
  factory _$$VercelWeeklyHoroscopeDtoImplCopyWith(
          _$VercelWeeklyHoroscopeDtoImpl value,
          $Res Function(_$VercelWeeklyHoroscopeDtoImpl) then) =
      __$$VercelWeeklyHoroscopeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'horoscope_data') String prediction});
}

/// @nodoc
class __$$VercelWeeklyHoroscopeDtoImplCopyWithImpl<$Res>
    extends _$VercelWeeklyHoroscopeDtoCopyWithImpl<$Res,
        _$VercelWeeklyHoroscopeDtoImpl>
    implements _$$VercelWeeklyHoroscopeDtoImplCopyWith<$Res> {
  __$$VercelWeeklyHoroscopeDtoImplCopyWithImpl(
      _$VercelWeeklyHoroscopeDtoImpl _value,
      $Res Function(_$VercelWeeklyHoroscopeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VercelWeeklyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prediction = null,
  }) {
    return _then(_$VercelWeeklyHoroscopeDtoImpl(
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VercelWeeklyHoroscopeDtoImpl implements _VercelWeeklyHoroscopeDto {
  _$VercelWeeklyHoroscopeDtoImpl(
      {@JsonKey(name: 'horoscope_data') required this.prediction});

  factory _$VercelWeeklyHoroscopeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VercelWeeklyHoroscopeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'horoscope_data')
  final String prediction;

  @override
  String toString() {
    return 'VercelWeeklyHoroscopeDto(prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VercelWeeklyHoroscopeDtoImpl &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prediction);

  /// Create a copy of VercelWeeklyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VercelWeeklyHoroscopeDtoImplCopyWith<_$VercelWeeklyHoroscopeDtoImpl>
      get copyWith => __$$VercelWeeklyHoroscopeDtoImplCopyWithImpl<
          _$VercelWeeklyHoroscopeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VercelWeeklyHoroscopeDtoImplToJson(
      this,
    );
  }
}

abstract class _VercelWeeklyHoroscopeDto implements VercelWeeklyHoroscopeDto {
  factory _VercelWeeklyHoroscopeDto(
          {@JsonKey(name: 'horoscope_data') required final String prediction}) =
      _$VercelWeeklyHoroscopeDtoImpl;

  factory _VercelWeeklyHoroscopeDto.fromJson(Map<String, dynamic> json) =
      _$VercelWeeklyHoroscopeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'horoscope_data')
  String get prediction;

  /// Create a copy of VercelWeeklyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VercelWeeklyHoroscopeDtoImplCopyWith<_$VercelWeeklyHoroscopeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VercelMonthlyHoroscopeDto _$VercelMonthlyHoroscopeDtoFromJson(
    Map<String, dynamic> json) {
  return _VercelMonthlyHoroscopeDto.fromJson(json);
}

/// @nodoc
mixin _$VercelMonthlyHoroscopeDto {
  @JsonKey(name: 'challenging_days')
  String get challengingDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'standout_days')
  String get standoutDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'horoscope_data')
  String get prediction => throw _privateConstructorUsedError;

  /// Serializes this VercelMonthlyHoroscopeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VercelMonthlyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VercelMonthlyHoroscopeDtoCopyWith<VercelMonthlyHoroscopeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VercelMonthlyHoroscopeDtoCopyWith<$Res> {
  factory $VercelMonthlyHoroscopeDtoCopyWith(VercelMonthlyHoroscopeDto value,
          $Res Function(VercelMonthlyHoroscopeDto) then) =
      _$VercelMonthlyHoroscopeDtoCopyWithImpl<$Res, VercelMonthlyHoroscopeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'challenging_days') String challengingDays,
      @JsonKey(name: 'standout_days') String standoutDays,
      @JsonKey(name: 'horoscope_data') String prediction});
}

/// @nodoc
class _$VercelMonthlyHoroscopeDtoCopyWithImpl<$Res,
        $Val extends VercelMonthlyHoroscopeDto>
    implements $VercelMonthlyHoroscopeDtoCopyWith<$Res> {
  _$VercelMonthlyHoroscopeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VercelMonthlyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengingDays = null,
    Object? standoutDays = null,
    Object? prediction = null,
  }) {
    return _then(_value.copyWith(
      challengingDays: null == challengingDays
          ? _value.challengingDays
          : challengingDays // ignore: cast_nullable_to_non_nullable
              as String,
      standoutDays: null == standoutDays
          ? _value.standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as String,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VercelMonthlyHoroscopeDtoImplCopyWith<$Res>
    implements $VercelMonthlyHoroscopeDtoCopyWith<$Res> {
  factory _$$VercelMonthlyHoroscopeDtoImplCopyWith(
          _$VercelMonthlyHoroscopeDtoImpl value,
          $Res Function(_$VercelMonthlyHoroscopeDtoImpl) then) =
      __$$VercelMonthlyHoroscopeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'challenging_days') String challengingDays,
      @JsonKey(name: 'standout_days') String standoutDays,
      @JsonKey(name: 'horoscope_data') String prediction});
}

/// @nodoc
class __$$VercelMonthlyHoroscopeDtoImplCopyWithImpl<$Res>
    extends _$VercelMonthlyHoroscopeDtoCopyWithImpl<$Res,
        _$VercelMonthlyHoroscopeDtoImpl>
    implements _$$VercelMonthlyHoroscopeDtoImplCopyWith<$Res> {
  __$$VercelMonthlyHoroscopeDtoImplCopyWithImpl(
      _$VercelMonthlyHoroscopeDtoImpl _value,
      $Res Function(_$VercelMonthlyHoroscopeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VercelMonthlyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengingDays = null,
    Object? standoutDays = null,
    Object? prediction = null,
  }) {
    return _then(_$VercelMonthlyHoroscopeDtoImpl(
      challengingDays: null == challengingDays
          ? _value.challengingDays
          : challengingDays // ignore: cast_nullable_to_non_nullable
              as String,
      standoutDays: null == standoutDays
          ? _value.standoutDays
          : standoutDays // ignore: cast_nullable_to_non_nullable
              as String,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VercelMonthlyHoroscopeDtoImpl implements _VercelMonthlyHoroscopeDto {
  _$VercelMonthlyHoroscopeDtoImpl(
      {@JsonKey(name: 'challenging_days') required this.challengingDays,
      @JsonKey(name: 'standout_days') required this.standoutDays,
      @JsonKey(name: 'horoscope_data') required this.prediction});

  factory _$VercelMonthlyHoroscopeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VercelMonthlyHoroscopeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'challenging_days')
  final String challengingDays;
  @override
  @JsonKey(name: 'standout_days')
  final String standoutDays;
  @override
  @JsonKey(name: 'horoscope_data')
  final String prediction;

  @override
  String toString() {
    return 'VercelMonthlyHoroscopeDto(challengingDays: $challengingDays, standoutDays: $standoutDays, prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VercelMonthlyHoroscopeDtoImpl &&
            (identical(other.challengingDays, challengingDays) ||
                other.challengingDays == challengingDays) &&
            (identical(other.standoutDays, standoutDays) ||
                other.standoutDays == standoutDays) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, challengingDays, standoutDays, prediction);

  /// Create a copy of VercelMonthlyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VercelMonthlyHoroscopeDtoImplCopyWith<_$VercelMonthlyHoroscopeDtoImpl>
      get copyWith => __$$VercelMonthlyHoroscopeDtoImplCopyWithImpl<
          _$VercelMonthlyHoroscopeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VercelMonthlyHoroscopeDtoImplToJson(
      this,
    );
  }
}

abstract class _VercelMonthlyHoroscopeDto implements VercelMonthlyHoroscopeDto {
  factory _VercelMonthlyHoroscopeDto(
      {@JsonKey(name: 'challenging_days') required final String challengingDays,
      @JsonKey(name: 'standout_days') required final String standoutDays,
      @JsonKey(name: 'horoscope_data')
      required final String prediction}) = _$VercelMonthlyHoroscopeDtoImpl;

  factory _VercelMonthlyHoroscopeDto.fromJson(Map<String, dynamic> json) =
      _$VercelMonthlyHoroscopeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'challenging_days')
  String get challengingDays;
  @override
  @JsonKey(name: 'standout_days')
  String get standoutDays;
  @override
  @JsonKey(name: 'horoscope_data')
  String get prediction;

  /// Create a copy of VercelMonthlyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VercelMonthlyHoroscopeDtoImplCopyWith<_$VercelMonthlyHoroscopeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
