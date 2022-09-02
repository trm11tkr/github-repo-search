import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:github_repo_search/core/extension/num_extension.dart';
import 'package:github_repo_search/core/widgets/thumbnail.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';

class GithubRepoDetailPage extends StatelessWidget {
  const GithubRepoDetailPage({super.key, required this.repository});

  final GithubRepo repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          repository.fullName,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleThumbnail(
                      url: repository.owner.avatarUrl,
                    ),
                    const Gap(10),
                    Text(repository.owner.login),
                  ],
                ),
                Text(
                  repository.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 20),
                ),
                const Gap(10),
                Text(
                  repository.description,
                ),
                _CustomTile(
                  icon: Icons.language,
                  title: 'language',
                  iconColor: Colors.blue,
                  child: repository.language != null
                      ? Text(repository.language!)
                      : const Text('-'),
                ),
                _CustomTile(
                  icon: Icons.star_border,
                  title: 'star',
                  iconColor: const Color(0xFFedb918),
                  child:
                      Text('${repository.stargazersCount.formatComma} stars'),
                ),
                _CustomTile(
                  icon: Icons.remove_red_eye_outlined,
                  title: 'watch',
                  iconColor: Colors.red,
                  child:
                      Text('${repository.watchersCount.formatComma} watching'),
                ),
                _CustomTile(
                  icon: Icons.fork_left,
                  title: 'fork',
                  iconColor: Colors.grey,
                  child: Text('${repository.forksCount.formatComma} forks'),
                ),
                _CustomTile(
                  icon: Icons.adjust,
                  title: 'issue',
                  iconColor: Colors.green,
                  child:
                      Text('${repository.openIssuesCount.formatComma} issues'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomTile extends StatelessWidget {
  const _CustomTile({
    required this.iconColor,
    required this.icon,
    required this.title,
    required this.child,
  });

  final Color iconColor;
  final IconData icon;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: iconColor,
          ),
          title: Text(title),
          trailing: child,
        ),
        const Divider(),
      ],
    );
  }
}
