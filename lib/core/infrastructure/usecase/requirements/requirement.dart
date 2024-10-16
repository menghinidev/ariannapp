import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';

// ignore: one_member_abstracts
abstract class UseCaseRequirement {
  Future<EmptyResponse> check();
}
