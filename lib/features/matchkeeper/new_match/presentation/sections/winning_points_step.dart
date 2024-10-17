import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WinningPointsStep extends ConsumerWidget {
  const WinningPointsStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      validator: (value) => value?.isEmpty ?? false ? 'Please enter a value' : null,
      onChanged: (value) {
        if (value.isEmpty) return;
        final asInt = int.tryParse(value);
        if (asInt == null) return;
        ref.read(newMatchControllerProvider.notifier).updateWinningPoints(asInt);
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      decoration: const InputDecoration(hintText: 'es. 21'),
    );
  }
}
