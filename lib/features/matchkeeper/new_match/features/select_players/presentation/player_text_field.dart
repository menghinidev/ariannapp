import 'package:ariannapp/core/infrastructure/utils/extensions/riverpod_extensions.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/application/usecase/get_players/get_players_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPlayerTextField extends ConsumerWidget {
  const NewPlayerTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(applicationPlayersProvider);
    return players.loadUntil(
      onLoaded: (data) => DropdownMenu<String>(
        enableFilter: true,
        expandedInsets: EdgeInsets.zero,
        label: const Text('Seleziona giocatore'),
        filterCallback: (entries, filter) => entries.where((e) => e.byNameOrNEW(filter)).toList(),
        dropdownMenuEntries: [
          for (final player in data)
            DropdownMenuEntry(
              value: player.name,
              label: player.name,
            ),
          const DropdownMenuEntry(value: 'NEW', label: 'Aggiungi giocatore'),
        ],
      ),
    );
  }
}

extension on DropdownMenuEntry<String> {
  bool byNameOrNEW(String filter) {
    return value.contains(filter) || value == 'NEW';
  }
}
