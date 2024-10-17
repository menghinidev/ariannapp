import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/mock_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
IMatchRepository matchRepository(MatchRepositoryRef ref) {
  return MockMatchRepository();
}
