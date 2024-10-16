import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/select_players/presentation/select_player_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewMatchScreen extends ConsumerWidget {
  const NewMatchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAppScreen(
      child: SizedBox.expand(
        child: Padding(
          padding: DistanceProvider.screenInsets.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (context) => const AddPlayerBottomSheet(),
                ),
                child: const Text('Add player'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
