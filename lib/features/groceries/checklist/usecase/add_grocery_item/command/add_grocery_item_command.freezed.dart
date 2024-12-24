// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_grocery_item_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddGroceryItemCommand {
  String get name => throw _privateConstructorUsedError;
  GroceryCategory get category => throw _privateConstructorUsedError;

  /// Create a copy of AddGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddGroceryItemCommandCopyWith<AddGroceryItemCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGroceryItemCommandCopyWith<$Res> {
  factory $AddGroceryItemCommandCopyWith(AddGroceryItemCommand value,
          $Res Function(AddGroceryItemCommand) then) =
      _$AddGroceryItemCommandCopyWithImpl<$Res, AddGroceryItemCommand>;
  @useResult
  $Res call({String name, GroceryCategory category});
}

/// @nodoc
class _$AddGroceryItemCommandCopyWithImpl<$Res,
        $Val extends AddGroceryItemCommand>
    implements $AddGroceryItemCommandCopyWith<$Res> {
  _$AddGroceryItemCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddGroceryItemCommandImplCopyWith<$Res>
    implements $AddGroceryItemCommandCopyWith<$Res> {
  factory _$$AddGroceryItemCommandImplCopyWith(
          _$AddGroceryItemCommandImpl value,
          $Res Function(_$AddGroceryItemCommandImpl) then) =
      __$$AddGroceryItemCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, GroceryCategory category});
}

/// @nodoc
class __$$AddGroceryItemCommandImplCopyWithImpl<$Res>
    extends _$AddGroceryItemCommandCopyWithImpl<$Res,
        _$AddGroceryItemCommandImpl>
    implements _$$AddGroceryItemCommandImplCopyWith<$Res> {
  __$$AddGroceryItemCommandImplCopyWithImpl(_$AddGroceryItemCommandImpl _value,
      $Res Function(_$AddGroceryItemCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
  }) {
    return _then(_$AddGroceryItemCommandImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroceryCategory,
    ));
  }
}

/// @nodoc

class _$AddGroceryItemCommandImpl implements _AddGroceryItemCommand {
  _$AddGroceryItemCommandImpl({required this.name, required this.category});

  @override
  final String name;
  @override
  final GroceryCategory category;

  @override
  String toString() {
    return 'AddGroceryItemCommand(name: $name, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGroceryItemCommandImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, category);

  /// Create a copy of AddGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGroceryItemCommandImplCopyWith<_$AddGroceryItemCommandImpl>
      get copyWith => __$$AddGroceryItemCommandImplCopyWithImpl<
          _$AddGroceryItemCommandImpl>(this, _$identity);
}

abstract class _AddGroceryItemCommand implements AddGroceryItemCommand {
  factory _AddGroceryItemCommand(
      {required final String name,
      required final GroceryCategory category}) = _$AddGroceryItemCommandImpl;

  @override
  String get name;
  @override
  GroceryCategory get category;

  /// Create a copy of AddGroceryItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGroceryItemCommandImplCopyWith<_$AddGroceryItemCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
