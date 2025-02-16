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

SimpleDailyHoroscope _$SimpleDailyHoroscopeFromJson(Map<String, dynamic> json) {
  return _SimpleDailyHoroscope.fromJson(json);
}

/// @nodoc
mixin _$SimpleDailyHoroscope {
  @JsonKey(name: 'sign_id')
  int get signId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sign_name')
  String get signName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get prediction => throw _privateConstructorUsedError;

  /// Serializes this SimpleDailyHoroscope to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleDailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleDailyHoroscopeCopyWith<SimpleDailyHoroscope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleDailyHoroscopeCopyWith<$Res> {
  factory $SimpleDailyHoroscopeCopyWith(SimpleDailyHoroscope value,
          $Res Function(SimpleDailyHoroscope) then) =
      _$SimpleDailyHoroscopeCopyWithImpl<$Res, SimpleDailyHoroscope>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sign_id') int signId,
      @JsonKey(name: 'sign_name') String signName,
      DateTime date,
      String prediction});
}

/// @nodoc
class _$SimpleDailyHoroscopeCopyWithImpl<$Res,
        $Val extends SimpleDailyHoroscope>
    implements $SimpleDailyHoroscopeCopyWith<$Res> {
  _$SimpleDailyHoroscopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleDailyHoroscope
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
abstract class _$$SimpleDailyHoroscopeImplCopyWith<$Res>
    implements $SimpleDailyHoroscopeCopyWith<$Res> {
  factory _$$SimpleDailyHoroscopeImplCopyWith(_$SimpleDailyHoroscopeImpl value,
          $Res Function(_$SimpleDailyHoroscopeImpl) then) =
      __$$SimpleDailyHoroscopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sign_id') int signId,
      @JsonKey(name: 'sign_name') String signName,
      DateTime date,
      String prediction});
}

/// @nodoc
class __$$SimpleDailyHoroscopeImplCopyWithImpl<$Res>
    extends _$SimpleDailyHoroscopeCopyWithImpl<$Res, _$SimpleDailyHoroscopeImpl>
    implements _$$SimpleDailyHoroscopeImplCopyWith<$Res> {
  __$$SimpleDailyHoroscopeImplCopyWithImpl(_$SimpleDailyHoroscopeImpl _value,
      $Res Function(_$SimpleDailyHoroscopeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleDailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signId = null,
    Object? signName = null,
    Object? date = null,
    Object? prediction = null,
  }) {
    return _then(_$SimpleDailyHoroscopeImpl(
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
class _$SimpleDailyHoroscopeImpl implements _SimpleDailyHoroscope {
  _$SimpleDailyHoroscopeImpl(
      {@JsonKey(name: 'sign_id') required this.signId,
      @JsonKey(name: 'sign_name') required this.signName,
      required this.date,
      required this.prediction});

  factory _$SimpleDailyHoroscopeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleDailyHoroscopeImplFromJson(json);

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
    return 'SimpleDailyHoroscope(signId: $signId, signName: $signName, date: $date, prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleDailyHoroscopeImpl &&
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

  /// Create a copy of SimpleDailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleDailyHoroscopeImplCopyWith<_$SimpleDailyHoroscopeImpl>
      get copyWith =>
          __$$SimpleDailyHoroscopeImplCopyWithImpl<_$SimpleDailyHoroscopeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleDailyHoroscopeImplToJson(
      this,
    );
  }
}

abstract class _SimpleDailyHoroscope implements SimpleDailyHoroscope {
  factory _SimpleDailyHoroscope(
      {@JsonKey(name: 'sign_id') required final int signId,
      @JsonKey(name: 'sign_name') required final String signName,
      required final DateTime date,
      required final String prediction}) = _$SimpleDailyHoroscopeImpl;

  factory _SimpleDailyHoroscope.fromJson(Map<String, dynamic> json) =
      _$SimpleDailyHoroscopeImpl.fromJson;

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

  /// Create a copy of SimpleDailyHoroscope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleDailyHoroscopeImplCopyWith<_$SimpleDailyHoroscopeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
