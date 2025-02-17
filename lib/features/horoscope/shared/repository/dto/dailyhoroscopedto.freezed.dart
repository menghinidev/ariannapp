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

ProkeralaDailyHoroscopeDto _$ProkeralaDailyHoroscopeDtoFromJson(
    Map<String, dynamic> json) {
  return _ProkeralaDailyHoroscopeDto.fromJson(json);
}

/// @nodoc
mixin _$ProkeralaDailyHoroscopeDto {
  @JsonKey(name: 'sign_id')
  int get signId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sign_name')
  String get signName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get prediction => throw _privateConstructorUsedError;

  /// Serializes this ProkeralaDailyHoroscopeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProkeralaDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProkeralaDailyHoroscopeDtoCopyWith<ProkeralaDailyHoroscopeDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProkeralaDailyHoroscopeDtoCopyWith<$Res> {
  factory $ProkeralaDailyHoroscopeDtoCopyWith(ProkeralaDailyHoroscopeDto value,
          $Res Function(ProkeralaDailyHoroscopeDto) then) =
      _$ProkeralaDailyHoroscopeDtoCopyWithImpl<$Res,
          ProkeralaDailyHoroscopeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sign_id') int signId,
      @JsonKey(name: 'sign_name') String signName,
      DateTime date,
      String prediction});
}

/// @nodoc
class _$ProkeralaDailyHoroscopeDtoCopyWithImpl<$Res,
        $Val extends ProkeralaDailyHoroscopeDto>
    implements $ProkeralaDailyHoroscopeDtoCopyWith<$Res> {
  _$ProkeralaDailyHoroscopeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProkeralaDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signId = null,
    Object? signName = null,
    Object? date = null,
    Object? prediction = null,
  }) {
    return _then(_value.copyWith(
      signId: null == signId
          ? _value.signId
          : signId // ignore: cast_nullable_to_non_nullable
              as int,
      signName: null == signName
          ? _value.signName
          : signName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ProkeralaDailyHoroscopeDtoImplCopyWith<$Res>
    implements $ProkeralaDailyHoroscopeDtoCopyWith<$Res> {
  factory _$$ProkeralaDailyHoroscopeDtoImplCopyWith(
          _$ProkeralaDailyHoroscopeDtoImpl value,
          $Res Function(_$ProkeralaDailyHoroscopeDtoImpl) then) =
      __$$ProkeralaDailyHoroscopeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sign_id') int signId,
      @JsonKey(name: 'sign_name') String signName,
      DateTime date,
      String prediction});
}

/// @nodoc
class __$$ProkeralaDailyHoroscopeDtoImplCopyWithImpl<$Res>
    extends _$ProkeralaDailyHoroscopeDtoCopyWithImpl<$Res,
        _$ProkeralaDailyHoroscopeDtoImpl>
    implements _$$ProkeralaDailyHoroscopeDtoImplCopyWith<$Res> {
  __$$ProkeralaDailyHoroscopeDtoImplCopyWithImpl(
      _$ProkeralaDailyHoroscopeDtoImpl _value,
      $Res Function(_$ProkeralaDailyHoroscopeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProkeralaDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signId = null,
    Object? signName = null,
    Object? date = null,
    Object? prediction = null,
  }) {
    return _then(_$ProkeralaDailyHoroscopeDtoImpl(
      signId: null == signId
          ? _value.signId
          : signId // ignore: cast_nullable_to_non_nullable
              as int,
      signName: null == signName
          ? _value.signName
          : signName // ignore: cast_nullable_to_non_nullable
              as String,
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

@JsonSerializable(explicitToJson: true)
class _$ProkeralaDailyHoroscopeDtoImpl implements _ProkeralaDailyHoroscopeDto {
  _$ProkeralaDailyHoroscopeDtoImpl(
      {@JsonKey(name: 'sign_id') required this.signId,
      @JsonKey(name: 'sign_name') required this.signName,
      required this.date,
      required this.prediction});

  factory _$ProkeralaDailyHoroscopeDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProkeralaDailyHoroscopeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'sign_id')
  final int signId;
  @override
  @JsonKey(name: 'sign_name')
  final String signName;
  @override
  final DateTime date;
  @override
  final String prediction;

  @override
  String toString() {
    return 'ProkeralaDailyHoroscopeDto(signId: $signId, signName: $signName, date: $date, prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProkeralaDailyHoroscopeDtoImpl &&
            (identical(other.signId, signId) || other.signId == signId) &&
            (identical(other.signName, signName) ||
                other.signName == signName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, signId, signName, date, prediction);

  /// Create a copy of ProkeralaDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProkeralaDailyHoroscopeDtoImplCopyWith<_$ProkeralaDailyHoroscopeDtoImpl>
      get copyWith => __$$ProkeralaDailyHoroscopeDtoImplCopyWithImpl<
          _$ProkeralaDailyHoroscopeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProkeralaDailyHoroscopeDtoImplToJson(
      this,
    );
  }
}

abstract class _ProkeralaDailyHoroscopeDto
    implements ProkeralaDailyHoroscopeDto {
  factory _ProkeralaDailyHoroscopeDto(
      {@JsonKey(name: 'sign_id') required final int signId,
      @JsonKey(name: 'sign_name') required final String signName,
      required final DateTime date,
      required final String prediction}) = _$ProkeralaDailyHoroscopeDtoImpl;

  factory _ProkeralaDailyHoroscopeDto.fromJson(Map<String, dynamic> json) =
      _$ProkeralaDailyHoroscopeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'sign_id')
  int get signId;
  @override
  @JsonKey(name: 'sign_name')
  String get signName;
  @override
  DateTime get date;
  @override
  String get prediction;

  /// Create a copy of ProkeralaDailyHoroscopeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProkeralaDailyHoroscopeDtoImplCopyWith<_$ProkeralaDailyHoroscopeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
