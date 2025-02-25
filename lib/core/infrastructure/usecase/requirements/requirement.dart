import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';

abstract class UseCaseRequirement {
  Future<EmptyResponse> check();
}
