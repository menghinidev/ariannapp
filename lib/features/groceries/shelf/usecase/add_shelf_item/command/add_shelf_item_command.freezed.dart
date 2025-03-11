// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_shelf_item_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddShelfItemCommand {
  String get name => throw _privateConstructorUsedError;
  GroceryCategory get category => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of AddShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddShelfItemCommandCopyWith<AddShelfItemCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddShelfItemCommandCopyWith<$Res> {
  factory $AddShelfItemCommandCopyWith(
          AddShelfItemCommand value, $Res Function(AddShelfItemCommand) then) =
      _$AddShelfItemCommandCopyWithImpl<$Res, AddShelfItemCommand>;
  @useResult
  $Res call({String name, GroceryCategory category, BuildContext context});
}

/// @nodoc
class _$AddShelfItemCommandCopyWithImpl<$Res, $Val extends AddShelfItemCommand>
    implements $AddShelfItemCommandCopyWith<$Res> {
  _$AddShelfItemCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddShelfItemCommandImplCopyWith<$Res>
    implements $AddShelfItemCommandCopyWith<$Res> {
  factory _$$AddShelfItemCommandImplCopyWith(_$AddShelfItemCommandImpl value,
          $Res Function(_$AddShelfItemCommandImpl) then) =
      __$$AddShelfItemCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, GroceryCategory category, BuildContext context});
}

/// @nodoc
class __$$AddShelfItemCommandImplCopyWithImpl<$Res>
    extends _$AddShelfItemCommandCopyWithImpl<$Res, _$AddShelfItemCommandImpl>
    implements _$$AddShelfItemCommandImplCopyWith<$Res> {
  __$$AddShelfItemCommandImplCopyWithImpl(_$AddShelfItemCommandImpl _value,
      $Res Function(_$AddShelfItemCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$AddShelfItemCommandImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AddShelfItemCommandImpl implements _AddShelfItemCommand {
  _$AddShelfItemCommandImpl(
      {required this.name, required this.category, required this.context});

  @override
  final String name;
  @override
  final GroceryCategory category;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AddShelfItemCommand(name: $name, category: $category, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShelfItemCommandImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, category, context);

  /// Create a copy of AddShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShelfItemCommandImplCopyWith<_$AddShelfItemCommandImpl> get copyWith =>
      __$$AddShelfItemCommandImplCopyWithImpl<_$AddShelfItemCommandImpl>(
          this, _$identity);
}

abstract class _AddShelfItemCommand implements AddShelfItemCommand {
  factory _AddShelfItemCommand(
      {required final String name,
      required final GroceryCategory category,
      required final BuildContext context}) = _$AddShelfItemCommandImpl;

  @override
  String get name;
  @override
  GroceryCategory get category;
  @override
  BuildContext get context;

  /// Create a copy of AddShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddShelfItemCommandImplCopyWith<_$AddShelfItemCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
