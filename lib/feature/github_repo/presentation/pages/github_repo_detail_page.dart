import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/core/extension/num_extension.dart';
import 'package:github_repo_search/core/res/language_color.dart';
import 'package:github_repo_search/core/widgets/thumbnail.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

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
                  style: context.titleStyle,
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      repository.description,
                      style: context.subTitleStyle,
                    ),
                  ),
                ),
                _CustomTile(
                  icon: Icons.language,
                  title: i18n.language,
                  iconColor: Colors.blue,
                  child: repository.language != null
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.fiber_manual_record,
                              color: context.isDark
                                  ? LanguageColors.getLanguageColor(
                                      repository.language,
                                    )
                                  : LanguageColors.getLanguageColor(
                                      repository.language,
                                    ).withOpacity(0.8),
                            ),
                            Text(repository.language!),
                          ],
                        )
                      : const Text('-'),
                ),
                _CustomTile(
                  icon: Icons.star_border,
                  title: i18n.star,
                  iconColor: const Color(0xFFedb918),
                  child: Text(repository.stargazersCount.formatComma),
                ),
                _CustomTile(
                  icon: Icons.remove_red_eye_outlined,
                  title: i18n.watch,
                  iconColor: Colors.red,
                  child: Text(repository.watchersCount.formatComma),
                ),
                _CustomTile(
                  icon: Icons.fork_left,
                  title: i18n.fork,
                  iconColor: Colors.grey,
                  child: Text(repository.forksCount.formatComma),
                ),
                _CustomTile(
                  icon: Icons.adjust,
                  title: i18n.issue,
                  iconColor: Colors.green,
                  child: Text(repository.openIssuesCount.formatComma),
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
            color: context.isDark ? iconColor.withOpacity(0.8) : iconColor,
          ),
          title: Text(title),
          trailing: child,
        ),
        const Divider(),
      ],
    );
  }
}
