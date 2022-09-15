import 'package:flutter/material.dart';
import 'package:github_repo_search/core/widgets/smart_refresher_custom.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_tile.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class RepoListBuilder extends StatelessWidget {
  const RepoListBuilder({
    super.key,
    required this.repos,
    required this.onLoading,
    this.hasNext = true,
  });

  final List<GithubRepo> repos;
  final VoidCallback onLoading;
  final bool hasNext;

  @override
  Widget build(BuildContext context) {
    final refreshController = RefreshController();
    return SmartRefresher(
      controller: refreshController,
      footer: const SmartRefreshFooter(),
      enablePullDown: false,
      // 次のデータがない場合は引っ張れないようにする
      enablePullUp: hasNext,
      physics: const BouncingScrollPhysics(),
      onLoading: () {
        onLoading();
        refreshController.loadComplete();
      },
      child: ListView.separated(
        itemBuilder: (context, index) {
          final repo = repos[index];
          return RepoTile(repository: repo);
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: repos.length,
      ),
    );
  }
}
