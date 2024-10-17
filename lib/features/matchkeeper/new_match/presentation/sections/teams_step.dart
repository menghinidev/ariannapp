import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/select_player_bottom_sheet.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/team_list_tile.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
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
          ),
        ),
        DistanceProvider.mediumDistance.spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: ElevatedButton(
            child: const Text('Aggiungi squadra'),
            onPressed: () => showModalBottomSheet<Team>(
              context: context,
              builder: (context) => const AddPlayerBottomSheet(),
            ).then((value) {
              if (value != null) {
                ref.read(newMatchControllerProvider.notifier).addTeam(value);
              }
            }),
          ),
        ),
      ],
    );
  }
}
