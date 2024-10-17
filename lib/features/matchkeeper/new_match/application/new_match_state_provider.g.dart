// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_match_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$canProceedStepperHash() => r'de966a206c349f09796ff6583c1c7ee8bfacf553';

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

typedef CanProceedStepperRef = AutoDisposeProviderRef<bool>;
String _$stepperStateHash() => r'bafd914fe9c8c80e67aa79ba3d41a5560de5700a';

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
    r'7b12d283fa1d5b8cffcf0bb8796fe4bb641b8435';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
