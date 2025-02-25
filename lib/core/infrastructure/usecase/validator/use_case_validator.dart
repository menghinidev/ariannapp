import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';

abstract class UseCaseValidator<T> {
  Future<EmptyResponse> validate(T input);
}
