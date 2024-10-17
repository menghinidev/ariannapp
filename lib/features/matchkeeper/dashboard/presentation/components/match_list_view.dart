import 'package:ariannapp/core/infrastructure/utils/extensions/riverpod_extensions.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/application/usecase/get_matches/command/get_matches_command.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/application/usecase/get_matches/get_matches_use_case.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/presentation/components/match_card.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchListView extends ConsumerWidget {
  const MatchListView({
    required this.status,
    super.key,
  });

  final MatchStatus status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matches = ref.watch(matchesProvider(GetMatchesCommand(status: status)));
    return matches.loadUntil(
      onLoaded: (data) => ListView.builder(
        itemCount: data.length,
        padding: DistanceProvider.screenInsets.padding,
        itemBuilder: (context, index) => MatchCard(match: data[index]),
      ),
    );
  }
}
