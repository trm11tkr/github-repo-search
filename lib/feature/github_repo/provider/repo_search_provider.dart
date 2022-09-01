import 'package:github_repo_search/core/model/github_repos_state.dart';
import 'package:github_repo_search/core/services/api/repo_search_client.dart';
import 'package:github_repo_search/feature/github_repo/provider/search_query_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final repoSearchProvider = FutureProvider((ref) {
  final searchQuery = ref.watch(searchQueryProvider);

  return ref.watch(repoSearchClientProvider).get(
    queryParameters: <String, dynamic>{'q': searchQuery},
    fromJson: GithubReposState.fromJson,
  );
});
