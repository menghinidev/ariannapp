import 'package:ariannapp/core/infrastructure/utils/extensions/list_extensions.dart';

class Responses {
  static Response<P, E> success<P, E>(P? payload) => _Success(payload: payload);
  static Response<P, E> failure<P, E>([List<E>? errors]) => _Failure(errors: errors);

  static Response<List<P>, E> createFrom<P, E, X>(
    Iterable<X> source,
    Response<P, E> Function(X source) mapper,
  ) {
    var response = Responses.success<List<P>, E>([]);
    for (final id in source) {
      response = response.flatMap((tab) => mapper(id).map((p) => tab!.appendInPlace(p)));
    }
    return response;
  }

  static Future<Response<List<P>, E>> createFromAsync<P, E, X>(
    Iterable<X> source,
    Future<Response<P, E>> Function(X source) mapper,
  ) async {
    var response = Responses.success<List<P>, E>([]);
    for (final id in source) {
      response = await response.flatMapAsync((tab) => mapper(id).mapToResponse((p) => tab!.appendInPlace(p as P)));
    }
    return response;
  }

  static Response<P, E> create<P, E>({
    required P? Function() builder,
    required bool Function(P? value) isError,
    E? error,
  }) {
    final payload = builder();
    if (isError(payload)) {
      final errors = error == null ? <E>[] : <E>[error];
      return Responses.failure<P, E>(errors);
    }
    return Responses.success<P, E>(payload);
  }

  static Future<Response<P, E>> createAsync<P, E>({
    required Future<P> Function() builder,
    required bool Function(P) isError,
    E? error,
  }) async {
    final payload = await builder();
    if (isError(payload)) {
      return Responses.failure();
    }
    return Responses.success<P, E>(payload);
  }
}

abstract class Response<P, E> {
  bool get isError => errors != null;

  P? get payload;
  List<E>? get errors;

  bool hasError(E error) => errors != null && errors!.contains(error);

  Response<B, E> map<B>(B Function(P? payload) mapper);

  Response<B, E> flatMap<B>(Response<B, E> Function(P? payload) mapper);

  Future<Response<B, E>> mapAsync<B>(Future<B> Function(P? payload) mapper);

  Future<Response<B, E>> flatMapAsync<B>(Future<Response<B, E>> Function(P? payload) mapper);

  Response<P, E> ifSuccess(void Function(P? payload) callback);

  Future<Response<P, E>> ifSuccessAsync(Future<void> Function(P? payload) callback);

  Response<P, E> ifError(void Function(E? error) callback, {E? specificError});

  Future<Response<P, E>> ifErrorAsync(Future<void> Function(P? payload) callback, {E? specificError});
}

class _Success<P, E> extends Response<P, E> {
  _Success({P? payload}) : _payload = payload;
  final P? _payload;

  @override
  List<E>? get errors => null;

  @override
  P? get payload => _payload;

  @override
  Response<B, E> map<B>(B Function(P? P) mapper) => _Success(payload: mapper(payload));

  @override
  Response<B, E> flatMap<B>(Response<B, E> Function(P? P) mapper) => mapper(payload);

  @override
  Future<Response<B, E>> flatMapAsync<B>(Future<Response<B, E>> Function(P? P) mapper) async => mapper(payload);

  @override
  Future<Response<B, E>> mapAsync<B>(Future<B> Function(P? P) mapper) async => _Success(payload: await mapper(payload));

  @override
  Response<P, E> ifSuccess(void Function(P?) callback) {
    callback(payload);
    return this;
  }

  @override
  Future<Response<P, E>> ifSuccessAsync(Future<void> Function(P? payload) callback) async {
    await callback(payload);
    return Future.value(this);
  }

  @override
  Response<P, E> ifError(void Function(E? error) callback, {E? specificError}) => this;

  @override
  Future<Response<P, E>> ifErrorAsync(Future<void> Function(P? payload) callback, {E? specificError}) =>
      Future.value(this);
}

class _Failure<P, E> extends Response<P, E> {
  _Failure({List<E>? errors}) : _errors = errors;
  final List<E>? _errors;

  @override
  List<E> get errors => _errors ?? <E>[];

  @override
  P? get payload => null;

  @override
  Response<B, E> map<B>(B Function(P P) mapper) => _Failure<B, E>(errors: errors);

  @override
  Response<B, E> flatMap<B>(Response<B, E> Function(P P) mapper) => _Failure<B, E>(errors: errors);

  @override
  Future<Response<B, E>> flatMapAsync<B>(Future<Response<B, E>> Function(P P) mapper) =>
      Future.value(_Failure<B, E>(errors: errors));

  @override
  Future<Response<B, E>> mapAsync<B>(Future<B> Function(P P) mapper) => Future.value(_Failure(errors: errors));

  @override
  Response<P, E> ifSuccess(void Function(P p1) callback) => this;

  @override
  Future<Response<P, E>> ifSuccessAsync(Future<void> Function(P payload) callback) => Future.value(this);

  @override
  Response<P, E> ifError(void Function(E? error) callback, {E? specificError}) {
    if (_triggerErrorCallback(specificError)) callback(errors.isEmpty ? null : errors.first);
    return this;
  }

  bool _triggerErrorCallback(E? specificError) {
    if (specificError == null) return true;
    return super.hasError(specificError);
  }

  @override
  Future<Response<P, E>> ifErrorAsync(Future<void> Function(P? payload) callback, {E? specificError}) async {
    if (_triggerErrorCallback(specificError)) await callback(payload);
    return Future.value(this);
  }
}

extension FutureResponseExtension<B, E> on Future<Response<B, E>> {
  Future<Response<P, E>> mapToResponse<P>(P Function(B? payload) mapper) async {
    final res = await this;
    return res.map(mapper);
  }

  Future<Response<B, E>> ifError(void Function(E? error) callback, {E? specificError}) async {
    final res = await this;
    return res.ifError(callback, specificError: specificError);
  }

  Future<Response<B, E>> ifErrorAsync(Future<void> Function(B? payload) callback, {E? specificError}) async {
    final res = await this;
    return res.ifErrorAsync(callback, specificError: specificError);
  }

  Future<Response<B, E>> ifSuccess(void Function(B? payload) callback) async {
    final res = await this;
    return res.ifSuccess(callback);
  }

  Future<Response<B, E>> ifSuccessAsync(Future<void> Function(B? payload) callback) async {
    final res = await this;
    return res.ifSuccessAsync(callback);
  }

  Future<Response<P, E>> mapAsyncToResponse<P>(Future<P> Function(B? payload) mapper) async {
    final res = await this;
    return res.mapAsync(mapper);
  }

  Future<Response<P, E>> flatMapToResponse<P>(Response<P, E> Function(B? payload) mapper) async {
    final res = await this;
    return res.flatMap(mapper);
  }

  Future<Response<P, E>> flatMapAsyncToResponse<P>(Future<Response<P, E>> Function(B? payload) mapper) async {
    final res = await this;
    return res.flatMapAsync(mapper);
  }
}
