import 'package:ariannapp/core/core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countabledata.freezed.dart';
part 'countabledata.g.dart';

@freezed
class CountableData with _$CountableData {
  @JsonSerializable(explicitToJson: true)
  factory CountableData({
    required String id,
    required String name,
    required int counter,
    required String email,
    @Default(false) bool isPublic,
    @Default(<CountableEvent>[]) List<CountableEvent> events,
  }) = _CountableData;

  factory CountableData.fromJson(Map<String, dynamic> json) => _$CountableDataFromJson(json);

  factory CountableData.fromFirebase(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final id = doc.id;
    final content = doc.data();
    final json = {...content, 'id': id};
    return CountableData.fromJson(json);
  }
}

extension CountableDataMapper on CountableData {
  Map<String, dynamic> toFirebase() {
    final json = {...toJson()}..remove('id');
    return json;
  }
}

@freezed
class CountableEvent with _$CountableEvent {
  @JsonSerializable(explicitToJson: true)
  factory CountableEvent({required DateTime timestamp, String? description}) = _CountableEvent;

  factory CountableEvent.fromJson(Map<String, dynamic> json) => _$CountableEventFromJson(json);
}

@freezed
class CountableDataBuilder with _$CountableDataBuilder {
  factory CountableDataBuilder({
    required String email,
    String? name,
    @Default(0) int counter,
    @Default(false) bool isPublic,
    @Default(<CountableEvent>[]) List<CountableEvent> events,
  }) = _CountableDataBuilder;

  factory CountableDataBuilder.fromJson(Map<String, dynamic> json) => _$CountableDataBuilderFromJson(json);
}

extension CountableDataBuilderValidator on CountableDataBuilder {
  bool get isValid => name != null && name!.isNotEmpty;
}

extension CountableDataStats on CountableData {
  Map<DateTime, int> get groupedByDate {
    final mapped = <DateTime, int>{};
    for (final event in events) {
      final date = event.timestamp.asDate;
      if (mapped.containsKey(date)) {
        mapped[date] = mapped[date]! + 1;
      } else {
        mapped[date] = 1;
      }
    }
    return mapped;
  }

  int subTotal(Map<DateTime, int> map, int index) {
    return map.entries.toList().sublist(0, index).fold(1, (a, b) => a + b.value);
  }
}
