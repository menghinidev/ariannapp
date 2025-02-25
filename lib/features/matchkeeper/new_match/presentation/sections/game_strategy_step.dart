import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameStrategyStep extends ConsumerStatefulWidget {
  const GameStrategyStep({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GameStrategyStepState();
}

class _GameStrategyStepState extends ConsumerState<GameStrategyStep> {
  late TextEditingController _controller;

  void _init() {
    final initialValue = ref.read(newMatchControllerProvider.select((e) => e.winningPoints));
    _controller = TextEditingController(text: initialValue?.toString());
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      newMatchControllerProvider.select((value) => value.winningPoints),
      (_, state) => _controller.text = state?.toString() ?? '',
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: _controller,
          validator: (value) => value?.isEmpty ?? false ? 'Inserisci un punteggio' : null,
          autovalidateMode: AutovalidateMode.onUnfocus,
          decoration: const InputDecoration(
            label: Text('Punti vittoria'),
            helperText: 'Scegli quanti punti servono per vincere',
            hintText: 'es. 21',
          ),
          onChanged: (value) {
            if (value.isEmpty) return;
            final asInt = int.tryParse(value);
            if (asInt == null) return;
            ref.read(newMatchControllerProvider.notifier).updateWinningPoints(asInt);
          },
        ),
        DistanceProvider.mediumDistance.spacer(),
        const _DoubleLifeSection(),
        DistanceProvider.mediumDistance.spacer(),
      ],
    );
  }
}

class _DoubleLifeSection extends ConsumerWidget {
  const _DoubleLifeSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(newMatchControllerProvider.select((e) => e.doubleLife));
    return SwitchListTile.adaptive(
      value: value ?? false,
      title: const Text('Doppia vita'),
      subtitle: const Text('Dopo che avrai superato il punteggio massimo potrai continuare a giocare'),
      onChanged: (value) => ref.read(newMatchControllerProvider.notifier).updateDoubleLife(doubleLife: value),
    );
  }
}
