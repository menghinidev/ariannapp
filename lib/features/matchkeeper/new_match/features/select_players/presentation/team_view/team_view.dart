import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/player_list_tile.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/player_text_field.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'team_view.g.dart';

@riverpod
class TeamSelectedPlayers extends _$TeamSelectedPlayers {
  @override
  List<Player> build() {
    return <Player>[];
  }

  void add(Player player) {
    state = [...state, player];
  }
}

class AddTeamView extends ConsumerWidget {
  const AddTeamView({
    required this.onSelected,
    super.key,
  });

  final void Function(Team team) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPlayers = ref.watch(teamSelectedPlayersProvider);
    return Column(
      children: [
        for (final (index, player) in selectedPlayers.indexed) ...[
          PlayerListTile(player: player, index: index),
          DistanceProvider.smallDistance.spacer(),
        ],
        NewPlayerTextField(
          key: ValueKey(selectedPlayers),
          onSelected: (value) => ref.read(teamSelectedPlayersProvider.notifier).add(value),
        ),
        DistanceProvider.mediumDistance.spacer(),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () => onSelected(Team(players: selectedPlayers)),
            child: const Text('Aggiungi squadra'),
          ),
        ),
      ],
    );
  }
}
