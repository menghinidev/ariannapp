import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:ariannapp/features/counter/shared/repository/sources/i_counter_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreCounterRepository with RepositorySafeInvoker implements ICounterRepository {
  final instance = FirebaseFirestore.instance;

  static const String countableCollection = 'countable';

  @override
  Future<ApplicationResponse<List<CountableData>>> getCountables() {
    return safeInvoke(
      request: () => instance.collection(countableCollection).get(),
      payloadMapper: (payload) => payload.docs.map(CountableData.fromFirebase).toList(),
    );
  }

  @override
  Future<EmptyResponse> updateCountable(CountableData countable) {
    return safeInvoke(
      request: () => instance.collection(countableCollection).doc(countable.id).update(countable.toFirebase()),
      payloadMapper: (payload) {},
    );
  }

  @override
  Future<EmptyResponse> initializeCountable(CountableDataBuilder type) {
    return safeInvoke(
      request: () => instance.collection(countableCollection).add(type.toJson()),
      payloadMapper: (payload) {},
    );
  }

  @override
  Future<EmptyResponse> deleteCountable(String id) {
    return safeInvoke(
      request: () => instance.collection(countableCollection).doc(id).delete(),
      payloadMapper: (payload) {},
    );
  }
}
