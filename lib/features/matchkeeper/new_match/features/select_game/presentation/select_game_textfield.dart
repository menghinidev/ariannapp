import 'package:ariannapp/core/infrastructure/utils/extensions/riverpod_extensions.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_game/application/usecase/get_games_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectGameTextField extends ConsumerWidget {
  const SelectGameTextField({
    required this.onSelected,
    super.key,
  });

  final void Function(Game? game) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(applicationGamesProvider);
    return games.loadUntil(
      onLoaded: (data) => DropdownMenu<Game>(
        enableFilter: true,
        expandedInsets: EdgeInsets.zero,
        filterCallback: (entries, filter) => entries.where((e) => e.byName(filter)).toList(),
        onSelected: onSelected,
        dropdownMenuEntries: [
          for (final game in data)
            DropdownMenuEntry(
              value: game,
              label: game.name,
            ),
        ],
      ),
    );
  }
}

extension on DropdownMenuEntry<Game> {
  bool byName(String filter) {
    return value.name.contains(filter);
  }
}
