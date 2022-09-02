import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/core/extension/num_extension.dart';
import 'package:github_repo_search/core/res/language_color.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';
import 'package:github_repo_search/feature/github_repo/presentation/pages/github_repo_detail_page.dart';

class RepoTile extends StatelessWidget {
  const RepoTile({super.key, required this.repository});

  final GithubRepo repository;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push<GithubRepoDetailPage>(
            MaterialPageRoute(
              builder: (context) {
                return GithubRepoDetailPage(repository: repository);
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              repository.fullName,
              style: context.titleStyle.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              repository.description,
              maxLines: 2,
              style: context.subTitleStyle,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                if (repository.language != null)
                  _CustomIcon(
                    context: context,
                    iconData: Icons.fiber_manual_record,
                    iconColor:
                        LanguageColors.getLanguageColor(repository.language),
                    child: Text(repository.language!),
                  ),
                if (repository.forksCount != 0)
                  _CustomIcon(
                    context: context,
                    iconData: Icons.star_border,
                    iconColor: const Color(0xFFedb918),
                    child: Text(repository.stargazersCount.withAlphabet),
                  ),
                const SizedBox(width: 5),
                if (repository.forksCount != 0)
                  _CustomIcon(
                    context: context,
                    iconData: Icons.fork_left,
                    iconColor: Colors.grey,
                    child: Text(repository.forksCount.withAlphabet),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomIcon extends StatelessWidget {
  const _CustomIcon({
    required this.context,
    required this.iconData,
    required this.iconColor,
    required this.child,
  });
  final BuildContext context;
  final IconData iconData;
  final Color iconColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: context.isDark ? iconColor.withOpacity(0.8) : iconColor,
        ),
        const SizedBox(width: 1),
        child,
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
