// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_astrology_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$horoscopeSignSelectorHash() =>
    r'6eced535ed16b4b3bc2fbe1a1d19cdfbfe68240b';

/// See also [HoroscopeSignSelector].
@ProviderFor(HoroscopeSignSelector)
final horoscopeSignSelectorProvider = AutoDisposeAsyncNotifierProvider<
    HoroscopeSignSelector, HoroscopeSign>.internal(
  HoroscopeSignSelector.new,
  name: r'horoscopeSignSelectorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$horoscopeSignSelectorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HoroscopeSignSelector = AutoDisposeAsyncNotifier<HoroscopeSign>;
String _$horoscopeDateSelectorHash() =>
    r'1803916893bbd054d6e4f1ae023c0c3ea0bb7516';

/// See also [HoroscopeDateSelector].
@ProviderFor(HoroscopeDateSelector)
final horoscopeDateSelectorProvider =
    AutoDisposeNotifierProvider<HoroscopeDateSelector, DateTime>.internal(
  HoroscopeDateSelector.new,
  name: r'horoscopeDateSelectorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$horoscopeDateSelectorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HoroscopeDateSelector = AutoDisposeNotifier<DateTime>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
