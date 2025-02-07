// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_matches_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$matchesHash() => r'a17a494be597731b06d0ce8f65d6716473e0879b';

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

/// See also [matches].
@ProviderFor(matches)
const matchesProvider = MatchesFamily();

/// See also [matches].
class MatchesFamily extends Family<AsyncValue<List<ApplicationMatch>>> {
  /// See also [matches].
  const MatchesFamily();

  /// See also [matches].
  MatchesProvider call(
    GetMatchesCommand command,
  ) {
    return MatchesProvider(
      command,
    );
  }

  @override
  MatchesProvider getProviderOverride(
    covariant MatchesProvider provider,
  ) {
    return call(
      provider.command,
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
  String? get name => r'matchesProvider';
}

/// See also [matches].
class MatchesProvider
    extends AutoDisposeFutureProvider<List<ApplicationMatch>> {
  /// See also [matches].
  MatchesProvider(
    GetMatchesCommand command,
  ) : this._internal(
          (ref) => matches(
            ref as MatchesRef,
            command,
          ),
          from: matchesProvider,
          name: r'matchesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$matchesHash,
          dependencies: MatchesFamily._dependencies,
          allTransitiveDependencies: MatchesFamily._allTransitiveDependencies,
          command: command,
        );

  MatchesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.command,
  }) : super.internal();

  final GetMatchesCommand command;

  @override
  Override overrideWith(
    FutureOr<List<ApplicationMatch>> Function(MatchesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MatchesProvider._internal(
        (ref) => create(ref as MatchesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        command: command,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ApplicationMatch>> createElement() {
    return _MatchesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MatchesProvider && other.command == command;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, command.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MatchesRef on AutoDisposeFutureProviderRef<List<ApplicationMatch>> {
  /// The parameter `command` of this provider.
  GetMatchesCommand get command;
}

class _MatchesProviderElement
    extends AutoDisposeFutureProviderElement<List<ApplicationMatch>>
    with MatchesRef {
  _MatchesProviderElement(super.provider);

  @override
  GetMatchesCommand get command => (origin as MatchesProvider).command;
}

String _$getMatchesUseCaseHash() => r'05a28f79d7ac4f1ffc3385f5ccb6d299e4ac8231';

/// See also [getMatchesUseCase].
@ProviderFor(getMatchesUseCase)
final getMatchesUseCaseProvider =
    AutoDisposeProvider<GetMatchesUseCase>.internal(
  getMatchesUseCase,
  name: r'getMatchesUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getMatchesUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetMatchesUseCaseRef = AutoDisposeProviderRef<GetMatchesUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
