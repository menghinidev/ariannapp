import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/components/player_text_field.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddSinglePlayerView extends ConsumerWidget {
  const AddSinglePlayerView({
    required this.onSelected,
    super.key,
  });

  final void Function(Team player) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AddPlayerTextField(
      onSelected: (value) => onSelected(Team(
        players: [value],
        id: '1',
      )),
    );
  }
}
