import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WinningPointsStep extends ConsumerStatefulWidget {
  const WinningPointsStep({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WinningPointsStepState();
}

class _WinningPointsStepState extends ConsumerState<WinningPointsStep> {
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
    return TextFormField(
      controller: _controller,
      validator: (value) => value?.isEmpty ?? false ? 'Inserisci un punteggio' : null,
      autovalidateMode: AutovalidateMode.onUnfocus,
      decoration: const InputDecoration(hintText: 'es. 21'),
      onChanged: (value) {
        if (value.isEmpty) return;
        final asInt = int.tryParse(value);
        if (asInt == null) return;
        ref.read(newMatchControllerProvider.notifier).updateWinningPoints(asInt);
      },
    );
  }
}
