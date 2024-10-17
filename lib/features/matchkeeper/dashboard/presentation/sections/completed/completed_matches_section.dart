import 'package:ariannapp/features/matchkeeper/dashboard/presentation/sections/match_list_view.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompletedMatchesSection extends ConsumerWidget {
  const CompletedMatchesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MatchListView(status: MatchStatus.completed);
  }
}
