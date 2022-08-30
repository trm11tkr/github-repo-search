abstract class ApiClient {
  String get host;

  String get path;

  Map<String, dynamic> get headers;

  Duration get timeLimit;

  Future<T> get<T>({
    required Map<String, dynamic> queryParameters,
  });
}
