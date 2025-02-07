// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shelf_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShelfItem _$ShelfItemFromJson(Map<String, dynamic> json) {
  return _ShelfItem.fromJson(json);
}

/// @nodoc
mixin _$ShelfItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  GroceryCategory get category => throw _privateConstructorUsedError;

  /// Serializes this ShelfItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShelfItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShelfItemCopyWith<ShelfItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShelfItemCopyWith<$Res> {
  factory $ShelfItemCopyWith(ShelfItem value, $Res Function(ShelfItem) then) =
      _$ShelfItemCopyWithImpl<$Res, ShelfItem>;
  @useResult
  $Res call(
      {String id, String name, DateTime lastUpdate, GroceryCategory category});
}

/// @nodoc
class _$ShelfItemCopyWithImpl<$Res, $Val extends ShelfItem>
    implements $ShelfItemCopyWith<$Res> {
  _$ShelfItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShelfItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastUpdate = null,
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
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShelfItemImplCopyWith<$Res>
    implements $ShelfItemCopyWith<$Res> {
  factory _$$ShelfItemImplCopyWith(
          _$ShelfItemImpl value, $Res Function(_$ShelfItemImpl) then) =
      __$$ShelfItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, DateTime lastUpdate, GroceryCategory category});
}

/// @nodoc
class __$$ShelfItemImplCopyWithImpl<$Res>
    extends _$ShelfItemCopyWithImpl<$Res, _$ShelfItemImpl>
    implements _$$ShelfItemImplCopyWith<$Res> {
  __$$ShelfItemImplCopyWithImpl(
      _$ShelfItemImpl _value, $Res Function(_$ShelfItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShelfItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastUpdate = null,
    Object? category = null,
  }) {
    return _then(_$ShelfItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShelfItemImpl implements _ShelfItem {
  _$ShelfItemImpl(
      {required this.id,
      required this.name,
      required this.lastUpdate,
      required this.category});

  factory _$ShelfItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShelfItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime lastUpdate;
  @override
  final GroceryCategory category;

  @override
  String toString() {
    return 'ShelfItem(id: $id, name: $name, lastUpdate: $lastUpdate, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShelfItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lastUpdate, category);

  /// Create a copy of ShelfItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShelfItemImplCopyWith<_$ShelfItemImpl> get copyWith =>
      __$$ShelfItemImplCopyWithImpl<_$ShelfItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShelfItemImplToJson(
      this,
    );
  }
}

abstract class _ShelfItem implements ShelfItem {
  factory _ShelfItem(
      {required final String id,
      required final String name,
      required final DateTime lastUpdate,
      required final GroceryCategory category}) = _$ShelfItemImpl;

  factory _ShelfItem.fromJson(Map<String, dynamic> json) =
      _$ShelfItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get lastUpdate;
  @override
  GroceryCategory get category;

  /// Create a copy of ShelfItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShelfItemImplCopyWith<_$ShelfItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
