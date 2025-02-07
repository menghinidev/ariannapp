// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_match_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$canProceedStepperHash() => r'896cc54314cd5f596f0195def22c7d6f446351eb';

/// See also [canProceedStepper].
@ProviderFor(canProceedStepper)
final canProceedStepperProvider = AutoDisposeProvider<bool>.internal(
  canProceedStepper,
  name: r'canProceedStepperProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$canProceedStepperHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CanProceedStepperRef = AutoDisposeProviderRef<bool>;
String _$stepperStateHash() => r'71b33be4efc8b72e9e7470b7526cfc414bd88589';

/// See also [StepperState].
@ProviderFor(StepperState)
final stepperStateProvider =
    AutoDisposeNotifierProvider<StepperState, int>.internal(
  StepperState.new,
  name: r'stepperStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$stepperStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StepperState = AutoDisposeNotifier<int>;
String _$newMatchControllerHash() =>
    r'4061c89afe1484cd41b2780bd34af38bc58677c6';

/// See also [NewMatchController].
@ProviderFor(NewMatchController)
final newMatchControllerProvider =
    AutoDisposeNotifierProvider<NewMatchController, MatchBuilder>.internal(
  NewMatchController.new,
  name: r'newMatchControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newMatchControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NewMatchController = AutoDisposeNotifier<MatchBuilder>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
