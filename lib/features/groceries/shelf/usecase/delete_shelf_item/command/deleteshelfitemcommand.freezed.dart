// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deleteshelfitemcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteShelfItemCommand {
  ShelfItem get shelf => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  /// Create a copy of DeleteShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteShelfItemCommandCopyWith<DeleteShelfItemCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteShelfItemCommandCopyWith<$Res> {
  factory $DeleteShelfItemCommandCopyWith(DeleteShelfItemCommand value,
          $Res Function(DeleteShelfItemCommand) then) =
      _$DeleteShelfItemCommandCopyWithImpl<$Res, DeleteShelfItemCommand>;
  @useResult
  $Res call({ShelfItem shelf, BuildContext context});

  $ShelfItemCopyWith<$Res> get shelf;
}

/// @nodoc
class _$DeleteShelfItemCommandCopyWithImpl<$Res,
        $Val extends DeleteShelfItemCommand>
    implements $DeleteShelfItemCommandCopyWith<$Res> {
  _$DeleteShelfItemCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelf = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      shelf: null == shelf
          ? _value.shelf
          : shelf // ignore: cast_nullable_to_non_nullable
              as ShelfItem,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  /// Create a copy of DeleteShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShelfItemCopyWith<$Res> get shelf {
    return $ShelfItemCopyWith<$Res>(_value.shelf, (value) {
      return _then(_value.copyWith(shelf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteShelfItemCommandImplCopyWith<$Res>
    implements $DeleteShelfItemCommandCopyWith<$Res> {
  factory _$$DeleteShelfItemCommandImplCopyWith(
          _$DeleteShelfItemCommandImpl value,
          $Res Function(_$DeleteShelfItemCommandImpl) then) =
      __$$DeleteShelfItemCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShelfItem shelf, BuildContext context});

  @override
  $ShelfItemCopyWith<$Res> get shelf;
}

/// @nodoc
class __$$DeleteShelfItemCommandImplCopyWithImpl<$Res>
    extends _$DeleteShelfItemCommandCopyWithImpl<$Res,
        _$DeleteShelfItemCommandImpl>
    implements _$$DeleteShelfItemCommandImplCopyWith<$Res> {
  __$$DeleteShelfItemCommandImplCopyWithImpl(
      _$DeleteShelfItemCommandImpl _value,
      $Res Function(_$DeleteShelfItemCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelf = null,
    Object? context = null,
  }) {
    return _then(_$DeleteShelfItemCommandImpl(
      shelf: null == shelf
          ? _value.shelf
          : shelf // ignore: cast_nullable_to_non_nullable
              as ShelfItem,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DeleteShelfItemCommandImpl implements _DeleteShelfItemCommand {
  _$DeleteShelfItemCommandImpl({required this.shelf, required this.context});

  @override
  final ShelfItem shelf;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DeleteShelfItemCommand(shelf: $shelf, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteShelfItemCommandImpl &&
            (identical(other.shelf, shelf) || other.shelf == shelf) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shelf, context);

  /// Create a copy of DeleteShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteShelfItemCommandImplCopyWith<_$DeleteShelfItemCommandImpl>
      get copyWith => __$$DeleteShelfItemCommandImplCopyWithImpl<
          _$DeleteShelfItemCommandImpl>(this, _$identity);
}

abstract class _DeleteShelfItemCommand implements DeleteShelfItemCommand {
  factory _DeleteShelfItemCommand(
      {required final ShelfItem shelf,
      required final BuildContext context}) = _$DeleteShelfItemCommandImpl;

  @override
  ShelfItem get shelf;
  @override
  BuildContext get context;

  /// Create a copy of DeleteShelfItemCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteShelfItemCommandImplCopyWith<_$DeleteShelfItemCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
