import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchListTile extends ConsumerWidget {
  const MatchListTile({super.key, required this.match});

  final ApplicationMatch match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(match.game.name),
      subtitle: Text(match.status.toString()),
    );
  }
}
