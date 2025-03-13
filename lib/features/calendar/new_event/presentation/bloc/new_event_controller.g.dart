// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_event_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newEventControllerHash() =>
    r'611b2d35ccd12c3e80788ad4202ad09c1d091e0d';

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

abstract class _$NewEventController
    extends BuildlessAutoDisposeNotifier<CalendarEventBuilder> {
  late final DateTime start;

  CalendarEventBuilder build(
    DateTime start,
  );
}

/// See also [NewEventController].
@ProviderFor(NewEventController)
const newEventControllerProvider = NewEventControllerFamily();

/// See also [NewEventController].
class NewEventControllerFamily extends Family<CalendarEventBuilder> {
  /// See also [NewEventController].
  const NewEventControllerFamily();

  /// See also [NewEventController].
  NewEventControllerProvider call(
    DateTime start,
  ) {
    return NewEventControllerProvider(
      start,
    );
  }

  @override
  NewEventControllerProvider getProviderOverride(
    covariant NewEventControllerProvider provider,
  ) {
    return call(
      provider.start,
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
  String? get name => r'newEventControllerProvider';
}

/// See also [NewEventController].
class NewEventControllerProvider extends AutoDisposeNotifierProviderImpl<
    NewEventController, CalendarEventBuilder> {
  /// See also [NewEventController].
  NewEventControllerProvider(
    DateTime start,
  ) : this._internal(
          () => NewEventController()..start = start,
          from: newEventControllerProvider,
          name: r'newEventControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newEventControllerHash,
          dependencies: NewEventControllerFamily._dependencies,
          allTransitiveDependencies:
              NewEventControllerFamily._allTransitiveDependencies,
          start: start,
        );

  NewEventControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.start,
  }) : super.internal();

  final DateTime start;

  @override
  CalendarEventBuilder runNotifierBuild(
    covariant NewEventController notifier,
  ) {
    return notifier.build(
      start,
    );
  }

  @override
  Override overrideWith(NewEventController Function() create) {
    return ProviderOverride(
      origin: this,
      override: NewEventControllerProvider._internal(
        () => create()..start = start,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        start: start,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<NewEventController, CalendarEventBuilder>
      createElement() {
    return _NewEventControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewEventControllerProvider && other.start == start;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, start.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NewEventControllerRef
    on AutoDisposeNotifierProviderRef<CalendarEventBuilder> {
  /// The parameter `start` of this provider.
  DateTime get start;
}

class _NewEventControllerProviderElement
    extends AutoDisposeNotifierProviderElement<NewEventController,
        CalendarEventBuilder> with NewEventControllerRef {
  _NewEventControllerProviderElement(super.provider);

  @override
  DateTime get start => (origin as NewEventControllerProvider).start;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
