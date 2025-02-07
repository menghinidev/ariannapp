// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snackbar_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$snackbarServiceHash() => r'169eb3d71d7e6f7f41c199e3785f7b4be9a58c87';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SnackbarService extends BuildlessNotifier<void> {
  late final BuildContext scaffoldContext;

  void build({
    required BuildContext scaffoldContext,
  });
}

/// See also [SnackbarService].
@ProviderFor(SnackbarService)
const snackbarServiceProvider = SnackbarServiceFamily();

/// See also [SnackbarService].
class SnackbarServiceFamily extends Family<void> {
  /// See also [SnackbarService].
  const SnackbarServiceFamily();

  /// See also [SnackbarService].
  SnackbarServiceProvider call({
    required BuildContext scaffoldContext,
  }) {
    return SnackbarServiceProvider(
      scaffoldContext: scaffoldContext,
    );
  }

  @override
  SnackbarServiceProvider getProviderOverride(
    covariant SnackbarServiceProvider provider,
  ) {
    return call(
      scaffoldContext: provider.scaffoldContext,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'snackbarServiceProvider';
}

/// See also [SnackbarService].
class SnackbarServiceProvider
    extends NotifierProviderImpl<SnackbarService, void> {
  /// See also [SnackbarService].
  SnackbarServiceProvider({
    required BuildContext scaffoldContext,
  }) : this._internal(
          () => SnackbarService()..scaffoldContext = scaffoldContext,
          from: snackbarServiceProvider,
          name: r'snackbarServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$snackbarServiceHash,
          dependencies: SnackbarServiceFamily._dependencies,
          allTransitiveDependencies:
              SnackbarServiceFamily._allTransitiveDependencies,
          scaffoldContext: scaffoldContext,
        );

  SnackbarServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.scaffoldContext,
  }) : super.internal();

  final BuildContext scaffoldContext;

  @override
  void runNotifierBuild(
    covariant SnackbarService notifier,
  ) {
    return notifier.build(
      scaffoldContext: scaffoldContext,
    );
  }

  @override
  Override overrideWith(SnackbarService Function() create) {
    return ProviderOverride(
      origin: this,
      override: SnackbarServiceProvider._internal(
        () => create()..scaffoldContext = scaffoldContext,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        scaffoldContext: scaffoldContext,
      ),
    );
  }

  @override
  NotifierProviderElement<SnackbarService, void> createElement() {
    return _SnackbarServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SnackbarServiceProvider &&
        other.scaffoldContext == scaffoldContext;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, scaffoldContext.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SnackbarServiceRef on NotifierProviderRef<void> {
  /// The parameter `scaffoldContext` of this provider.
  BuildContext get scaffoldContext;
}

class _SnackbarServiceProviderElement
    extends NotifierProviderElement<SnackbarService, void>
    with SnackbarServiceRef {
  _SnackbarServiceProviderElement(super.provider);

  @override
  BuildContext get scaffoldContext =>
      (origin as SnackbarServiceProvider).scaffoldContext;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
