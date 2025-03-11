import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/components/team_list_tile.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/select_player_bottom_sheet.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TeamsStep extends ConsumerWidget {
  const TeamsStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(newMatchControllerProvider.select((e) => e.teams));
    return Column(
      children: [
        ListView.builder(
          itemCount: teams.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => TeamListTile(
            index: index,
            team: teams[index],
            onRemove: () => ref.read(newMatchControllerProvider.notifier).removeTeam(teams[index]),
          ),
        ),
        DistanceProvider.mediumDistance.spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: ElevatedButton(
            child: const Text('Aggiungi squadra'),
            onPressed: () => _onAddTeam(context, ref),
          ),
        ),
      ],
    );
  }

  void _onAddTeam(BuildContext context, WidgetRef ref) {
    ref
        .read(bottomSheetServiceProvider)
        .showBottomSheet<List<Player>>(context, builder: (context) => const AddPlayerBottomSheet())
        .then((players) {
      if (players != null) {
        ref.read(newMatchControllerProvider.notifier).addTeam(players);
      }
    });
  }
}
