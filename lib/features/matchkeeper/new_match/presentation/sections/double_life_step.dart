import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoubleLifeStep extends ConsumerWidget {
  const DoubleLifeStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(newMatchControllerProvider.select((e) => e.doubleLife));
    return SwitchListTile.adaptive(
      value: value ?? false,
      title: const Text('Clicca per abilitare la doppia vita'),
      onChanged: (value) => ref.read(newMatchControllerProvider.notifier).updateDoubleLife(doubleLife: value),
    );
  }
}
