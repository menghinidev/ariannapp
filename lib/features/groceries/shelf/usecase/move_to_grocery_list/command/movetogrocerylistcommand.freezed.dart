// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movetogrocerylistcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoveToGroceryListCommand {
  ShelfItem get item => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of MoveToGroceryListCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoveToGroceryListCommandCopyWith<MoveToGroceryListCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveToGroceryListCommandCopyWith<$Res> {
  factory $MoveToGroceryListCommandCopyWith(MoveToGroceryListCommand value,
          $Res Function(MoveToGroceryListCommand) then) =
      _$MoveToGroceryListCommandCopyWithImpl<$Res, MoveToGroceryListCommand>;
  @useResult
  $Res call({ShelfItem item, BuildContext context});

  $ShelfItemCopyWith<$Res> get item;
}

/// @nodoc
class _$MoveToGroceryListCommandCopyWithImpl<$Res,
        $Val extends MoveToGroceryListCommand>
    implements $MoveToGroceryListCommandCopyWith<$Res> {
  _$MoveToGroceryListCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoveToGroceryListCommand
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
              as ShelfItem,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  /// Create a copy of MoveToGroceryListCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShelfItemCopyWith<$Res> get item {
    return $ShelfItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoveToGroceryListCommandImplCopyWith<$Res>
    implements $MoveToGroceryListCommandCopyWith<$Res> {
  factory _$$MoveToGroceryListCommandImplCopyWith(
          _$MoveToGroceryListCommandImpl value,
          $Res Function(_$MoveToGroceryListCommandImpl) then) =
      __$$MoveToGroceryListCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShelfItem item, BuildContext context});

  @override
  $ShelfItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$MoveToGroceryListCommandImplCopyWithImpl<$Res>
    extends _$MoveToGroceryListCommandCopyWithImpl<$Res,
        _$MoveToGroceryListCommandImpl>
    implements _$$MoveToGroceryListCommandImplCopyWith<$Res> {
  __$$MoveToGroceryListCommandImplCopyWithImpl(
      _$MoveToGroceryListCommandImpl _value,
      $Res Function(_$MoveToGroceryListCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoveToGroceryListCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? context = null,
  }) {
    return _then(_$MoveToGroceryListCommandImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ShelfItem,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$MoveToGroceryListCommandImpl implements _MoveToGroceryListCommand {
  _$MoveToGroceryListCommandImpl({required this.item, required this.context});

  @override
  final ShelfItem item;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'MoveToGroceryListCommand(item: $item, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveToGroceryListCommandImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, context);

  /// Create a copy of MoveToGroceryListCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveToGroceryListCommandImplCopyWith<_$MoveToGroceryListCommandImpl>
      get copyWith => __$$MoveToGroceryListCommandImplCopyWithImpl<
          _$MoveToGroceryListCommandImpl>(this, _$identity);
}

abstract class _MoveToGroceryListCommand implements MoveToGroceryListCommand {
  factory _MoveToGroceryListCommand(
      {required final ShelfItem item,
      required final BuildContext context}) = _$MoveToGroceryListCommandImpl;

  @override
  ShelfItem get item;
  @override
  BuildContext get context;

  /// Create a copy of MoveToGroceryListCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveToGroceryListCommandImplCopyWith<_$MoveToGroceryListCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
