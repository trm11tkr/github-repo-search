import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_tile.dart';

class RepoListBuilder extends StatelessWidget {
  const RepoListBuilder({
    super.key,
    required this.repos,
  });

  final List<GithubRepo> repos;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final repo = repos[index];
        return RepoTile(repository: repo);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: repos.length,
    );
  }
}
