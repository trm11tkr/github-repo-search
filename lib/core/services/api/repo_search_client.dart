import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/core/exceptions/api_error_response_exception.dart';
import 'package:github_repo_search/core/services/model/error/client_error.dart';
import 'package:github_repo_search/utils/logger.dart';
import 'package:http/http.dart' as http;

import 'api_client.dart';

/// HTTPクライアントプロバイダー
final httpClientProvider = Provider<http.Client>(
  (ref) => http.Client(),
);

/// リポジトリ検索プロバイダー
final repoSearchClientProvider = Provider(
  (ref) => _RepoSearchClient(
    client: ref.watch(httpClientProvider),
  ),
);

/// リポジトリ検索クライアント
class _RepoSearchClient implements ApiClient {
  const _RepoSearchClient({
    required this.client,
  });

  /// HTTPクライアント
  final http.Client client;

  @override
  String get host => 'api.github.com';

  @override
  String get path => 'search/repositories';

  @override
  Map<String, String> get headers => {'Accept': 'application/vnd.github+json'};

  @override
  Duration get timeLimit => const Duration(seconds: 10);

  @override
  Future<GithubReposState> get<GithubReposState>({
    required Map<String, dynamic> queryParameters,
    required GithubReposState Function(Map<String, dynamic> json) fromJson,
  }) async {
    logger.info(Uri.https(host, path, queryParameters));
    final response = await client
        .get(
          Uri.https(
            host,
            path,
            queryParameters,
          ),
          headers: headers,
        )
        .timeout(timeLimit);
    final jsonData = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      logger.info('success');
      return fromJson(jsonData);
    }
    // エラーレスポンスをJsonからparseしてエラーを投げる。
    final apiErrorResponse = ClientError.fromJson(jsonData);

    throw ApiErrorResponseException(
      code: response.statusCode,
      body: apiErrorResponse,
    );
  }
}
