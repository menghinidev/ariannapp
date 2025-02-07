import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/firestore.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/repository/match/sources/i_match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
IMatchRepository matchRepository(Ref ref) {
  return FirestoreMatchRepository();
}
