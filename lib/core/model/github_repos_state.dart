// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';

part 'github_repos_state.freezed.dart';
part 'github_repos_state.g.dart';

@freezed
class GithubReposState with _$GithubReposState {
  const factory GithubReposState({
    // 取得リポジトリの合計数
    required int totalCount,

    // GitHunリポジトリのリスト
    required List<GithubRepo> items,
  }) = _GithubReposState;

  factory GithubReposState.fromJson(Map<String, dynamic> json) =>
      _$GithubReposStateFromJson(json);
}
