// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'removegroceryitemcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoveGroceryItemCommand {
  GroceriesCheckListItem get item => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of RemoveGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveGroceryItemCommandCopyWith<RemoveGroceryItemCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveGroceryItemCommandCopyWith<$Res> {
  factory $RemoveGroceryItemCommandCopyWith(RemoveGroceryItemCommand value,
          $Res Function(RemoveGroceryItemCommand) then) =
      _$RemoveGroceryItemCommandCopyWithImpl<$Res, RemoveGroceryItemCommand>;
  @useResult
  $Res call({GroceriesCheckListItem item, BuildContext context});

  $GroceriesCheckListItemCopyWith<$Res> get item;
}

/// @nodoc
class _$RemoveGroceryItemCommandCopyWithImpl<$Res,
        $Val extends RemoveGroceryItemCommand>
    implements $RemoveGroceryItemCommandCopyWith<$Res> {
  _$RemoveGroceryItemCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GroceriesCheckListItem,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  /// Create a copy of RemoveGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroceriesCheckListItemCopyWith<$Res> get item {
    return $GroceriesCheckListItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoveGroceryItemCommandImplCopyWith<$Res>
    implements $RemoveGroceryItemCommandCopyWith<$Res> {
  factory _$$RemoveGroceryItemCommandImplCopyWith(
          _$RemoveGroceryItemCommandImpl value,
          $Res Function(_$RemoveGroceryItemCommandImpl) then) =
      __$$RemoveGroceryItemCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroceriesCheckListItem item, BuildContext context});

  @override
  $GroceriesCheckListItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$RemoveGroceryItemCommandImplCopyWithImpl<$Res>
    extends _$RemoveGroceryItemCommandCopyWithImpl<$Res,
        _$RemoveGroceryItemCommandImpl>
    implements _$$RemoveGroceryItemCommandImplCopyWith<$Res> {
  __$$RemoveGroceryItemCommandImplCopyWithImpl(
      _$RemoveGroceryItemCommandImpl _value,
      $Res Function(_$RemoveGroceryItemCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? context = null,
  }) {
    return _then(_$RemoveGroceryItemCommandImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GroceriesCheckListItem,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$RemoveGroceryItemCommandImpl implements _RemoveGroceryItemCommand {
  _$RemoveGroceryItemCommandImpl({required this.item, required this.context});

  @override
  final GroceriesCheckListItem item;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RemoveGroceryItemCommand(item: $item, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveGroceryItemCommandImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, context);

  /// Create a copy of RemoveGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveGroceryItemCommandImplCopyWith<_$RemoveGroceryItemCommandImpl>
      get copyWith => __$$RemoveGroceryItemCommandImplCopyWithImpl<
          _$RemoveGroceryItemCommandImpl>(this, _$identity);
}

abstract class _RemoveGroceryItemCommand implements RemoveGroceryItemCommand {
  factory _RemoveGroceryItemCommand(
      {required final GroceriesCheckListItem item,
      required final BuildContext context}) = _$RemoveGroceryItemCommandImpl;

  @override
  GroceriesCheckListItem get item;
  @override
  BuildContext get context;

  /// Create a copy of RemoveGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveGroceryItemCommandImplCopyWith<_$RemoveGroceryItemCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
