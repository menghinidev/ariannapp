import 'package:ariannapp/features/calendar/shared/repository/sources/calendar_repository.dart';
import 'package:ariannapp/features/calendar/shared/repository/sources/firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
ICalendarRepository calendarRepository(Ref ref) {
  return FirestoreCalendarRepository();
}
