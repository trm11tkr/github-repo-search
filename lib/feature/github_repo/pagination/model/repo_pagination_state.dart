import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_search/core/model/github_repos_state.dart';
import 'package:github_repo_search/core/services/model/repo_search_request_param.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';

part 'repo_pagination_state.freezed.dart';

@freezed
class RepoPaginationState with _$RepoPaginationState {
  const factory RepoPaginationState({
    @Default(0) int totalCount,
    @Default(<GithubRepo>[]) List<GithubRepo> items,
    required RepoSearchRequestParam param,
  }) = _RepoPaginationState;

  factory RepoPaginationState.update(
    GithubReposState githubReposState,
    RepoSearchRequestParam param,
  ) {
    return RepoPaginationState(
      totalCount: githubReposState.totalCount,
      items: githubReposState.items,
      param: param,
    );
  }
}
