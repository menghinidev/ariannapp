import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/player_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_player_bottom_sheet.g.dart';

/* State management */

@riverpod
List<String> _availablePlayerModes(_AvailablePlayerModesRef ref) {
  return ['Team', 'Player'];
}

@riverpod
class SelectedPlayerMode extends _$SelectedPlayerMode {
  @override
  String build() {
    final available = ref.watch(_availablePlayerModesProvider);
    return available.first;
  }

  void update(Set<String>? values) {
    if (values == null) return;
    state = values.first;
  }
}

/* UI */

class AddPlayerBottomSheet extends ConsumerWidget {
  const AddPlayerBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final available = ref.watch(_availablePlayerModesProvider);
    final selectedMode = ref.watch(selectedPlayerModeProvider);
    return BottomSheet(
      onClosing: () {},
      builder: (context) => SingleChildScrollView(
        padding: DistanceProvider.screenInsets.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SegmentedButton<String>(
              selected: {selectedMode},
              onSelectionChanged: ref.read(selectedPlayerModeProvider.notifier).update,
              segments: [
                for (final i in available) ButtonSegment(value: i, label: Text(i)),
              ],
            ),
            DistanceProvider.smallDistance.spacer(),
            const NewPlayerTextField(),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: () {},
                child: const Text('Aggiungi giocatore'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
