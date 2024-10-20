import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/single_player_view/player_view.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/team_view/team_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_player_bottom_sheet.g.dart';

/* State management */

@riverpod
List<String> _availablePlayerModes(_AvailablePlayerModesRef ref) {
  return ['Giocatore singolo', 'Squadra'];
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
      showDragHandle: true,
      onClosing: () {},
      builder: (context) => SingleChildScrollView(
        padding: DistanceProvider.screenInsets.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Aggiungi squadra o giocatore',
              style: context.textTheme.headlineSmall,
            ),
            DistanceProvider.mediumDistance.spacer(),
            SegmentedButton<String>(
              selected: {selectedMode},
              onSelectionChanged: ref.read(selectedPlayerModeProvider.notifier).update,
              segments: [
                for (final i in available) ButtonSegment(value: i, label: Text(i)),
              ],
            ),
            DistanceProvider.mediumDistance.spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: selectedMode == 'Squadra'
                    ? AddTeamView(onSelected: (players) => context.pop(players))
                    : AddSinglePlayerView(onSelected: (player) => context.pop([player])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
