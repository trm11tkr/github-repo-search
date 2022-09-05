import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner.dart';

part 'github_repo.freezed.dart';
part 'github_repo.g.dart';

// ref: https://docs.github.com/ja/rest/search#search-repositories

@freezed
class GithubRepo with _$GithubRepo {
  const factory GithubRepo({
    // リポジトリID
    required int id,

    // リポジトリ名
    required String name,

    // オーナーネーム+リポジトリ名
    required String fullName,

    // オーナー情報
    required Owner owner,

    // リポジトリの説明
    @Default('') String description,

    // プロジェクト言語
    String? language,

    // Star数
    required int stargazersCount,

    // Watch数
    required int watchersCount,

    // Fork数
    required int forksCount,

    // Issue数
    required int openIssuesCount,
  }) = _GithubRepo;

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);
}
