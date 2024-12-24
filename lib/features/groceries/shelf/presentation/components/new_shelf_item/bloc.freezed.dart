// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewShelfItemState {
  String? get name => throw _privateConstructorUsedError;
  GroceryCategory? get category => throw _privateConstructorUsedError;

  /// Create a copy of NewShelfItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewShelfItemStateCopyWith<NewShelfItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewShelfItemStateCopyWith<$Res> {
  factory $NewShelfItemStateCopyWith(
          NewShelfItemState value, $Res Function(NewShelfItemState) then) =
      _$NewShelfItemStateCopyWithImpl<$Res, NewShelfItemState>;
  @useResult
  $Res call({String? name, GroceryCategory? category});
}

/// @nodoc
class _$NewShelfItemStateCopyWithImpl<$Res, $Val extends NewShelfItemState>
    implements $NewShelfItemStateCopyWith<$Res> {
  _$NewShelfItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewShelfItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewShelfItemStateImplCopyWith<$Res>
    implements $NewShelfItemStateCopyWith<$Res> {
  factory _$$NewShelfItemStateImplCopyWith(_$NewShelfItemStateImpl value,
          $Res Function(_$NewShelfItemStateImpl) then) =
      __$$NewShelfItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, GroceryCategory? category});
}

/// @nodoc
class __$$NewShelfItemStateImplCopyWithImpl<$Res>
    extends _$NewShelfItemStateCopyWithImpl<$Res, _$NewShelfItemStateImpl>
    implements _$$NewShelfItemStateImplCopyWith<$Res> {
  __$$NewShelfItemStateImplCopyWithImpl(_$NewShelfItemStateImpl _value,
      $Res Function(_$NewShelfItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewShelfItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? category = freezed,
  }) {
    return _then(_$NewShelfItemStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory?,
    ));
  }
}

/// @nodoc

class _$NewShelfItemStateImpl implements _NewShelfItemState {
  _$NewShelfItemStateImpl({this.name, this.category});

  @override
  final String? name;
  @override
  final GroceryCategory? category;

  @override
  String toString() {
    return 'NewShelfItemState(name: $name, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewShelfItemStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, category);

  /// Create a copy of NewShelfItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewShelfItemStateImplCopyWith<_$NewShelfItemStateImpl> get copyWith =>
      __$$NewShelfItemStateImplCopyWithImpl<_$NewShelfItemStateImpl>(
          this, _$identity);
}

abstract class _NewShelfItemState implements NewShelfItemState {
  factory _NewShelfItemState(
      {final String? name,
      final GroceryCategory? category}) = _$NewShelfItemStateImpl;

  @override
  String? get name;
  @override
  GroceryCategory? get category;

  /// Create a copy of NewShelfItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewShelfItemStateImplCopyWith<_$NewShelfItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
