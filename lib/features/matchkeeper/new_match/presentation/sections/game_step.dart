import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_game/presentation/select_game_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameSelectionStep extends ConsumerWidget {
  const GameSelectionStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SelectGameTextField(
      onSelected: ref.read(newMatchControllerProvider.notifier).updateGame,
    );
  }
}
