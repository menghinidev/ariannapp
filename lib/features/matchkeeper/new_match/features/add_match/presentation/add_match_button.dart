import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/new_match/application/new_match_state_provider.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/add_match/usecase/add_match_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateNewMatchFAB extends ConsumerWidget {
  const CreateNewMatchFAB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final builder = ref.watch(newMatchControllerProvider);
    return FloatingActionButton(
      onPressed: () => ref.read(addMatchUseCaseProvider).call(builder).ifSuccess(
        (value) {
          if (context.mounted) {
            context.pop();
          }
        },
      ),
      child: const Icon(Icons.check),
    );
  }
}
