// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_players_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$applicationPlayersHash() =>
    r'9aae07fc78a5690387bd5ec86c2f72124d54bfb0';

/// See also [ApplicationPlayers].
@ProviderFor(ApplicationPlayers)
final applicationPlayersProvider =
    AutoDisposeAsyncNotifierProvider<ApplicationPlayers, List<Player>>.internal(
  ApplicationPlayers.new,
  name: r'applicationPlayersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$applicationPlayersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ApplicationPlayers = AutoDisposeAsyncNotifier<List<Player>>;
String _$teamPlayersHash() => r'b9d06b42f8887bd1a9b0dd65fd16707455a44b42';

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

abstract class _$TeamPlayers
    extends BuildlessAutoDisposeAsyncNotifier<List<Player>> {
  late final Team team;

  FutureOr<List<Player>> build(
    Team team,
  );
}

/// See also [TeamPlayers].
@ProviderFor(TeamPlayers)
const teamPlayersProvider = TeamPlayersFamily();

/// See also [TeamPlayers].
class TeamPlayersFamily extends Family<AsyncValue<List<Player>>> {
  /// See also [TeamPlayers].
  const TeamPlayersFamily();

  /// See also [TeamPlayers].
  TeamPlayersProvider call(
    Team team,
  ) {
    return TeamPlayersProvider(
      team,
    );
  }

  @override
  TeamPlayersProvider getProviderOverride(
    covariant TeamPlayersProvider provider,
  ) {
    return call(
      provider.team,
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
  String? get name => r'teamPlayersProvider';
}

/// See also [TeamPlayers].
class TeamPlayersProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TeamPlayers, List<Player>> {
  /// See also [TeamPlayers].
  TeamPlayersProvider(
    Team team,
  ) : this._internal(
          () => TeamPlayers()..team = team,
          from: teamPlayersProvider,
          name: r'teamPlayersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$teamPlayersHash,
          dependencies: TeamPlayersFamily._dependencies,
          allTransitiveDependencies:
              TeamPlayersFamily._allTransitiveDependencies,
          team: team,
        );

  TeamPlayersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.team,
  }) : super.internal();

  final Team team;

  @override
  FutureOr<List<Player>> runNotifierBuild(
    covariant TeamPlayers notifier,
  ) {
    return notifier.build(
      team,
    );
  }

  @override
  Override overrideWith(TeamPlayers Function() create) {
    return ProviderOverride(
      origin: this,
      override: TeamPlayersProvider._internal(
        () => create()..team = team,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        team: team,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TeamPlayers, List<Player>>
      createElement() {
    return _TeamPlayersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TeamPlayersProvider && other.team == team;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, team.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TeamPlayersRef on AutoDisposeAsyncNotifierProviderRef<List<Player>> {
  /// The parameter `team` of this provider.
  Team get team;
}

class _TeamPlayersProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TeamPlayers, List<Player>>
    with TeamPlayersRef {
  _TeamPlayersProviderElement(super.provider);

  @override
  Team get team => (origin as TeamPlayersProvider).team;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
