import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio networkService(Ref ref) {
  final httpDelegate = Dio();
  final dioLoggerInterceptor = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
  );
  final interceptors = <Interceptor>[dioLoggerInterceptor];
  httpDelegate.interceptors.addAll(interceptors);
  return httpDelegate;
}
