// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groceries_checklist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroceriesCheckListState {
  List<GroceryCategory> get categories => throw _privateConstructorUsedError;
  bool? get ascending => throw _privateConstructorUsedError;
  DateTime? get from => throw _privateConstructorUsedError;

  /// Create a copy of GroceriesCheckListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroceriesCheckListStateCopyWith<GroceriesCheckListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceriesCheckListStateCopyWith<$Res> {
  factory $GroceriesCheckListStateCopyWith(GroceriesCheckListState value,
          $Res Function(GroceriesCheckListState) then) =
      _$GroceriesCheckListStateCopyWithImpl<$Res, GroceriesCheckListState>;
  @useResult
  $Res call(
      {List<GroceryCategory> categories, bool? ascending, DateTime? from});
}

/// @nodoc
class _$GroceriesCheckListStateCopyWithImpl<$Res,
        $Val extends GroceriesCheckListState>
    implements $GroceriesCheckListStateCopyWith<$Res> {
  _$GroceriesCheckListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroceriesCheckListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? ascending = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroceryCategory>,
      ascending: freezed == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceriesCheckListStateImplCopyWith<$Res>
    implements $GroceriesCheckListStateCopyWith<$Res> {
  factory _$$GroceriesCheckListStateImplCopyWith(
          _$GroceriesCheckListStateImpl value,
          $Res Function(_$GroceriesCheckListStateImpl) then) =
      __$$GroceriesCheckListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GroceryCategory> categories, bool? ascending, DateTime? from});
}

/// @nodoc
class __$$GroceriesCheckListStateImplCopyWithImpl<$Res>
    extends _$GroceriesCheckListStateCopyWithImpl<$Res,
        _$GroceriesCheckListStateImpl>
    implements _$$GroceriesCheckListStateImplCopyWith<$Res> {
  __$$GroceriesCheckListStateImplCopyWithImpl(
      _$GroceriesCheckListStateImpl _value,
      $Res Function(_$GroceriesCheckListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroceriesCheckListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? ascending = freezed,
    Object? from = freezed,
  }) {
    return _then(_$GroceriesCheckListStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroceryCategory>,
      ascending: freezed == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$GroceriesCheckListStateImpl implements _GroceriesCheckListState {
  _$GroceriesCheckListStateImpl(
      {final List<GroceryCategory> categories = const <GroceryCategory>[],
      this.ascending,
      this.from})
      : _categories = categories;

  final List<GroceryCategory> _categories;
  @override
  @JsonKey()
  List<GroceryCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final bool? ascending;
  @override
  final DateTime? from;

  @override
  String toString() {
    return 'GroceriesCheckListState(categories: $categories, ascending: $ascending, from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceriesCheckListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), ascending, from);

  /// Create a copy of GroceriesCheckListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceriesCheckListStateImplCopyWith<_$GroceriesCheckListStateImpl>
      get copyWith => __$$GroceriesCheckListStateImplCopyWithImpl<
          _$GroceriesCheckListStateImpl>(this, _$identity);
}

abstract class _GroceriesCheckListState implements GroceriesCheckListState {
  factory _GroceriesCheckListState(
      {final List<GroceryCategory> categories,
      final bool? ascending,
      final DateTime? from}) = _$GroceriesCheckListStateImpl;

  @override
  List<GroceryCategory> get categories;
  @override
  bool? get ascending;
  @override
  DateTime? get from;

  /// Create a copy of GroceriesCheckListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroceriesCheckListStateImplCopyWith<_$GroceriesCheckListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
