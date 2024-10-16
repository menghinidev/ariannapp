import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';

// ignore: one_member_abstracts
abstract class UseCaseValidator<T> {
  Future<EmptyResponse> validate(T input);
}
