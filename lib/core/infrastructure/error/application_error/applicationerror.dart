import 'package:ariannapp/core/infrastructure/error/error_code.dart';
import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicationerror.freezed.dart';

@freezed
class ApplicationError with _$ApplicationError {
  factory ApplicationError.generic({
    @Default(ErrorCode.generic) ErrorCode errorCode,
    String? message,
  }) = Generic;
  factory ApplicationError.unauthorized({
    @Default(ErrorCode.unauthorized) ErrorCode errorCode,
  }) = Unauthorized;
  factory ApplicationError.operationAborted({
    @Default(ErrorCode.operationAborted) ErrorCode errorCode,
  }) = OperationAborted;
}

typedef ApplicationResponse<T> = Response<T, ApplicationError>;

extension ResponseFeaturesExtension<T> on Response<T, ApplicationError> {
  Future<T> toFuture() {
    if (isError) {
      final error = errors?.isEmpty ?? true ? ApplicationError.generic() : errors!.first;
      return Future.error(error);
    }
    return Future.value(payload);
  }
}
