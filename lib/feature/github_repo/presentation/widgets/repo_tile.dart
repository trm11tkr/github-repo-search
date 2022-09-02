import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';
import 'package:github_repo_search/utils/logger.dart';

class RepoTile extends StatelessWidget {
  const RepoTile({super.key, required this.repository});

  final GithubRepo repository;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        onTap: () {
          logger.info(repository.fullName);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              repository.fullName,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              repository.description,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
