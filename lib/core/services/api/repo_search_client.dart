import 'dart:convert';

import 'package:github_repo_search/utils/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    try {
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
      return fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } on Exception catch (error) {
      logger.shout(error.toString());
      throw Exception(error.toString());
    }
  }
}
