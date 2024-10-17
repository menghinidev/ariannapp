import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:flutter/material.dart';

class PlayerListTile extends StatelessWidget {
  const PlayerListTile({
    required this.player,
    required this.index,
    super.key,
  });

  final Player player;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text('${index + 1}')),
      title: Text(player.name),
      subtitle: Text('Giocatore ${index + 1}'),
    );
  }
}
