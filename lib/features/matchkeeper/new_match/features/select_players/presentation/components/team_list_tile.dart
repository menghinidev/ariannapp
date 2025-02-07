import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/usecase/get_players/get_players_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TeamListTile extends ConsumerWidget {
  const TeamListTile({
    required this.team,
    required this.index,
    this.onRemove,
    super.key,
  });

  final Team team;
  final int index;
  final void Function()? onRemove;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(teamPlayersProvider(team).select((e) => e.valueOrNull));
    return LoadingSwitcher(
      value: players,
      builder: (context, data) => ListTile(
        leading: CircleAvatar(child: Text('${index + 1}')),
        title: Text(data.map((e) => e.name).join(', ')),
        subtitle: Text('Squadra ${index + 1}'),
        trailing: onRemove == null
            ? null
            : IconButton.filledTonal(
                onPressed: onRemove,
                icon: const Icon(Icons.remove_circle_outline),
              ),
      ),
    );
  }
}
