// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroceriesCheckListItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  GroceryCategory get category => throw _privateConstructorUsedError;

  /// Create a copy of GroceriesCheckListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroceriesCheckListItemCopyWith<GroceriesCheckListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceriesCheckListItemCopyWith<$Res> {
  factory $GroceriesCheckListItemCopyWith(GroceriesCheckListItem value,
          $Res Function(GroceriesCheckListItem) then) =
      _$GroceriesCheckListItemCopyWithImpl<$Res, GroceriesCheckListItem>;
  @useResult
  $Res call(
      {String id, String name, DateTime createdAt, GroceryCategory category});
}

/// @nodoc
class _$GroceriesCheckListItemCopyWithImpl<$Res,
        $Val extends GroceriesCheckListItem>
    implements $GroceriesCheckListItemCopyWith<$Res> {
  _$GroceriesCheckListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroceriesCheckListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? category = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceriesCheckListItemImplCopyWith<$Res>
    implements $GroceriesCheckListItemCopyWith<$Res> {
  factory _$$GroceriesCheckListItemImplCopyWith(
          _$GroceriesCheckListItemImpl value,
          $Res Function(_$GroceriesCheckListItemImpl) then) =
      __$$GroceriesCheckListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, DateTime createdAt, GroceryCategory category});
}

/// @nodoc
class __$$GroceriesCheckListItemImplCopyWithImpl<$Res>
    extends _$GroceriesCheckListItemCopyWithImpl<$Res,
        _$GroceriesCheckListItemImpl>
    implements _$$GroceriesCheckListItemImplCopyWith<$Res> {
  __$$GroceriesCheckListItemImplCopyWithImpl(
      _$GroceriesCheckListItemImpl _value,
      $Res Function(_$GroceriesCheckListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroceriesCheckListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? category = null,
  }) {
    return _then(_$GroceriesCheckListItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory,
    ));
  }
}

/// @nodoc

class _$GroceriesCheckListItemImpl implements _GroceriesCheckListItem {
  _$GroceriesCheckListItemImpl(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.category});

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final GroceryCategory category;

  @override
  String toString() {
    return 'GroceriesCheckListItem(id: $id, name: $name, createdAt: $createdAt, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceriesCheckListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, category);

  /// Create a copy of GroceriesCheckListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceriesCheckListItemImplCopyWith<_$GroceriesCheckListItemImpl>
      get copyWith => __$$GroceriesCheckListItemImplCopyWithImpl<
          _$GroceriesCheckListItemImpl>(this, _$identity);
}

abstract class _GroceriesCheckListItem implements GroceriesCheckListItem {
  factory _GroceriesCheckListItem(
      {required final String id,
      required final String name,
      required final DateTime createdAt,
      required final GroceryCategory category}) = _$GroceriesCheckListItemImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  GroceryCategory get category;

  /// Create a copy of GroceriesCheckListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroceriesCheckListItemImplCopyWith<_$GroceriesCheckListItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
