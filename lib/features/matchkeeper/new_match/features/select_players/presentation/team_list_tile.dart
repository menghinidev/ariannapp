import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:flutter/material.dart';

class TeamListTile extends StatelessWidget {
  const TeamListTile({
    required this.team,
    required this.index,
    super.key,
  });

  final Team team;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text('${index + 1}')),
      title: Text(team.players.map((e) => e.name).join(', ')),
      subtitle: Text('Squadra ${index + 1}'),
    );
  }
}
