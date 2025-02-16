// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_horoscope_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$horoscopeHash() => r'a729e7a723956f0fbab75de34f8cb63677875301';

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

/// See also [horoscope].
@ProviderFor(horoscope)
const horoscopeProvider = HoroscopeFamily();

/// See also [horoscope].
class HoroscopeFamily extends Family<AsyncValue<SimpleDailyHoroscope>> {
  /// See also [horoscope].
  const HoroscopeFamily();

  /// See also [horoscope].
  HoroscopeProvider call(
    HoroscopeSign sign,
  ) {
    return HoroscopeProvider(
      sign,
    );
  }

  @override
  HoroscopeProvider getProviderOverride(
    covariant HoroscopeProvider provider,
  ) {
    return call(
      provider.sign,
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
  String? get name => r'horoscopeProvider';
}

/// See also [horoscope].
class HoroscopeProvider
    extends AutoDisposeFutureProvider<SimpleDailyHoroscope> {
  /// See also [horoscope].
  HoroscopeProvider(
    HoroscopeSign sign,
  ) : this._internal(
          (ref) => horoscope(
            ref as HoroscopeRef,
            sign,
          ),
          from: horoscopeProvider,
          name: r'horoscopeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$horoscopeHash,
          dependencies: HoroscopeFamily._dependencies,
          allTransitiveDependencies: HoroscopeFamily._allTransitiveDependencies,
          sign: sign,
        );

  HoroscopeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sign,
  }) : super.internal();

  final HoroscopeSign sign;

  @override
  Override overrideWith(
    FutureOr<SimpleDailyHoroscope> Function(HoroscopeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HoroscopeProvider._internal(
        (ref) => create(ref as HoroscopeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sign: sign,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SimpleDailyHoroscope> createElement() {
    return _HoroscopeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HoroscopeProvider && other.sign == sign;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sign.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HoroscopeRef on AutoDisposeFutureProviderRef<SimpleDailyHoroscope> {
  /// The parameter `sign` of this provider.
  HoroscopeSign get sign;
}

class _HoroscopeProviderElement
    extends AutoDisposeFutureProviderElement<SimpleDailyHoroscope>
    with HoroscopeRef {
  _HoroscopeProviderElement(super.provider);

  @override
  HoroscopeSign get sign => (origin as HoroscopeProvider).sign;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
