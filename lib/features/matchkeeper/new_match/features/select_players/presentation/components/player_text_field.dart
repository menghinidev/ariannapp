import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/usecase/add_player/add_player_use_case.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/usecase/add_player/command/addplayercommand.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/usecase/get_players/get_players_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/player/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlayerTextField extends ConsumerStatefulWidget {
  const AddPlayerTextField({
    required this.onSelected,
    this.selectedPlayer,
    super.key,
  });

  final void Function(Player player) onSelected;
  final Player? selectedPlayer;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddPlayerTextFieldState();
}

class _AddPlayerTextFieldState extends ConsumerState<AddPlayerTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.selectedPlayer?.name);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final players = ref.watch(applicationPlayersProvider);
    return players.loadUntil(
      onLoaded: (data) => Row(
        children: [
          Expanded(
            child: CustomDropdownMenu<Player>(
              label: 'Seleziona giocatore',
              controller: _controller,
              labelProvider: (value) => value.name,
              values: data,
              requestFocusOnTap: true,
              initialSelection: widget.selectedPlayer,
              onSelected: (value) => value == null ? null : widget.onSelected(value),
            ),
          ),
          DistanceProvider.smallDistance.spacer(axis: Axis.horizontal),
          IconButton.filledTonal(
            onPressed: () => _addNewPlayer(ref),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Future<void> _addNewPlayer(WidgetRef ref) async {
    final command = AddPlayerCommand(name: _controller.text);
    final player = await ref.read(addPlayerUseCaseProvider).call(command);
    player.ifSuccess((value) => widget.onSelected(value!));
  }
}
