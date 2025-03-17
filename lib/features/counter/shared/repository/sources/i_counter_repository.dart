import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';

abstract class ICounterRepository {
  Future<ApplicationResponse<List<CountableData>>> getCountables();
  Future<EmptyResponse> initializeCountable(CountableDataBuilder countable);
  Future<EmptyResponse> updateCountable(CountableData countable);
  Future<EmptyResponse> deleteCountable(String id);
}
