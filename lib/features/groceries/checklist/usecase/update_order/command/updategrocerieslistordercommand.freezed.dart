// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updategrocerieslistordercommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateGroceriesListOrderCommand {
  List<GroceriesCheckListItem> get items => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGroceriesListOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGroceriesListOrderCommandCopyWith<UpdateGroceriesListOrderCommand>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroceriesListOrderCommandCopyWith<$Res> {
  factory $UpdateGroceriesListOrderCommandCopyWith(
          UpdateGroceriesListOrderCommand value,
          $Res Function(UpdateGroceriesListOrderCommand) then) =
      _$UpdateGroceriesListOrderCommandCopyWithImpl<$Res,
          UpdateGroceriesListOrderCommand>;
  @useResult
  $Res call({List<GroceriesCheckListItem> items, BuildContext context});
}

/// @nodoc
class _$UpdateGroceriesListOrderCommandCopyWithImpl<$Res,
        $Val extends UpdateGroceriesListOrderCommand>
    implements $UpdateGroceriesListOrderCommandCopyWith<$Res> {
  _$UpdateGroceriesListOrderCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGroceriesListOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GroceriesCheckListItem>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateGroceriesListOrderCommandImplCopyWith<$Res>
    implements $UpdateGroceriesListOrderCommandCopyWith<$Res> {
  factory _$$UpdateGroceriesListOrderCommandImplCopyWith(
          _$UpdateGroceriesListOrderCommandImpl value,
          $Res Function(_$UpdateGroceriesListOrderCommandImpl) then) =
      __$$UpdateGroceriesListOrderCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GroceriesCheckListItem> items, BuildContext context});
}

/// @nodoc
class __$$UpdateGroceriesListOrderCommandImplCopyWithImpl<$Res>
    extends _$UpdateGroceriesListOrderCommandCopyWithImpl<$Res,
        _$UpdateGroceriesListOrderCommandImpl>
    implements _$$UpdateGroceriesListOrderCommandImplCopyWith<$Res> {
  __$$UpdateGroceriesListOrderCommandImplCopyWithImpl(
      _$UpdateGroceriesListOrderCommandImpl _value,
      $Res Function(_$UpdateGroceriesListOrderCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateGroceriesListOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? context = null,
  }) {
    return _then(_$UpdateGroceriesListOrderCommandImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GroceriesCheckListItem>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$UpdateGroceriesListOrderCommandImpl
    implements _UpdateGroceriesListOrderCommand {
  _$UpdateGroceriesListOrderCommandImpl(
      {required final List<GroceriesCheckListItem> items,
      required this.context})
      : _items = items;

  final List<GroceriesCheckListItem> _items;
  @override
  List<GroceriesCheckListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UpdateGroceriesListOrderCommand(items: $items, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroceriesListOrderCommandImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), context);

  /// Create a copy of UpdateGroceriesListOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroceriesListOrderCommandImplCopyWith<
          _$UpdateGroceriesListOrderCommandImpl>
      get copyWith => __$$UpdateGroceriesListOrderCommandImplCopyWithImpl<
          _$UpdateGroceriesListOrderCommandImpl>(this, _$identity);
}

abstract class _UpdateGroceriesListOrderCommand
    implements UpdateGroceriesListOrderCommand {
  factory _UpdateGroceriesListOrderCommand(
          {required final List<GroceriesCheckListItem> items,
          required final BuildContext context}) =
      _$UpdateGroceriesListOrderCommandImpl;

  @override
  List<GroceriesCheckListItem> get items;
  @override
  BuildContext get context;

  /// Create a copy of UpdateGroceriesListOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGroceriesListOrderCommandImplCopyWith<
          _$UpdateGroceriesListOrderCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
