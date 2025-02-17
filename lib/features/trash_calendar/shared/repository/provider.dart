import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/trash_calendar/shared/repository/sources/trash_calendar_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
ITrashCalendarRepository trashCalendarRepository(Ref ref) {
  final dio = ref.read(networkServiceProvider);
  return ApricaTrashCalendarRepository(httpClient: dio);
}
