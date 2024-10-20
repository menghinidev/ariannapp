import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/add_match/presentation/add_match_button.dart';
import 'package:ariannapp/features/matchkeeper/new_match/presentation/sections/game_step.dart';
import 'package:ariannapp/features/matchkeeper/new_match/presentation/sections/game_strategy_step.dart';
import 'package:ariannapp/features/matchkeeper/new_match/presentation/sections/teams_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewMatchScreen extends ConsumerWidget {
  const NewMatchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepper = ref.watch(stepperStateProvider);
    final canProceed = ref.watch(canProceedStepperProvider);
    final canBuild = ref.watch(newMatchControllerProvider.select((e) => e.canBuild));
    return BaseAppScreen(
      title: 'Nuova partita',
      fab: !canBuild ? null : const CreateNewMatchFAB(),
      child: SizedBox.expand(
        child: Stepper(
          currentStep: stepper,
          stepIconHeight: 36,
          stepIconWidth: 36,
          margin: EdgeInsets.zero,
          stepIconMargin: EdgeInsets.zero,
          stepIconBuilder: _stepIconBuilder,
          onStepContinue: !canProceed ? null : () => ref.read(stepperStateProvider.notifier).nextStep(),
          onStepCancel: stepper == 0 ? null : () => ref.read(stepperStateProvider.notifier).previousStep(),
          controlsBuilder: _controlsBuilder,
          steps: [
            Step(
              title: const Text('Gioco'),
              subtitle: const Text('Scegli il gioco che vuoi giocare'),
              content: const GameSelectionStep(),
              isActive: stepper == 0,
              state: stepper > 0 ? StepState.complete : StepState.indexed,
            ),
            Step(
              title: const Text('Impostazioni di gioco'),
              subtitle: const Text('Scegli quanti punti servono per vincere e altri dettagli'),
              content: const GameStrategyStep(),
              isActive: stepper == 1,
              state: stepper > 1 ? StepState.complete : StepState.indexed,
            ),
            Step(
              title: const Text('Squadre'),
              subtitle: const Text('Scegli le squadre che parteciperanno al match'),
              content: const TeamsStep(),
              isActive: stepper == 2,
              state: stepper == 2 && canBuild ? StepState.complete : StepState.indexed,
            ),
          ],
        ),
      ),
    );
  }

  bool hasControlsBar(int stepper) => stepper < 2;

  Widget _controlsBuilder(BuildContext context, ControlsDetails details) {
    if (!hasControlsBar(details.currentStep)) return const SizedBox.shrink();
    return Container(
      margin: const EdgeInsets.only(top: DistanceProvider.smallDistance),
      child: Row(
        children: <Widget>[
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Continua'),
          ),
          TextButton(
            onPressed: details.onStepCancel,
            child: const Text('Indietro'),
          ),
        ],
      ),
    );
  }

  Widget? _stepIconBuilder(int index, StepState step) {
    if (step == StepState.complete) {
      return const Icon(Icons.check);
    }
    return const Icon(Icons.next_plan_outlined);
  }
}
