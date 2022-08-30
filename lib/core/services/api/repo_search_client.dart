import 'dart:convert';

// Packages imports:
import 'package:github_repo_search/utils/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

// Project imports:
import 'api_client.dart';

final repoSearchClientProvider = Provider(
  (_) => _RepoSearchClient(),
);

class _RepoSearchClient implements ApiClient {
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
      final response = await http
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
