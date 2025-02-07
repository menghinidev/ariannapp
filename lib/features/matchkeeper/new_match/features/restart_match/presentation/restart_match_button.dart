import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/restart_match/usecase/restart_match_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RestartMatchIconButton extends ConsumerWidget {
  const RestartMatchIconButton({required this.match, this.onCompleted, super.key});

  final ApplicationMatch match;
  final VoidCallback? onCompleted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton.filled(
      icon: const Icon(Icons.refresh),
      onPressed: () => ref.read(restartMatchUseCaseProvider).call(match).ifSuccess(
        (value) {
          if (context.mounted) {
            onCompleted?.call();
          }
        },
      ),
    );
  }
}
