import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/core/extension/num_extension.dart';
import 'package:github_repo_search/core/res/language_color.dart';
import 'package:github_repo_search/core/widgets/thumbnail.dart';
import 'package:github_repo_search/feature/github_repo/model/github_repo.dart';
import 'package:github_repo_search/feature/setting/theme_controller.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

class GithubRepoDetailPage extends StatelessWidget {
  const GithubRepoDetailPage({super.key, required this.repository});

  final GithubRepo repository;

  @override
  Widget build(BuildContext context) {
    /// SliverGridに表示する要素
    final repoDetailTiles = [
      /// 言語
      _SmallTile(
        icon: Icons.language,
        title: i18n.language,
        iconColor: Colors.blue,
        child: repository.language != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.fiber_manual_record,
                    color: LanguageColors.getLanguageColor(
                      repository.language,
                    ),
                    size: 18,
                  ),
                  Text(repository.language!),
                ],
              )
            : const Text('-'),
      ),

      /// スター数
      _SmallTile(
        icon: Icons.star_border,
        title: i18n.star,
        iconColor: const Color(0xFFedb918),
        child: Text(repository.stargazersCount.formatComma),
      ),

      /// ウォッチ数
      _SmallTile(
        icon: Icons.remove_red_eye_outlined,
        title: i18n.watch,
        iconColor: Colors.red,
        child: Text(repository.watchersCount.formatComma),
      ),

      /// フォーク数
      _SmallTile(
        icon: Icons.fork_left,
        title: i18n.fork,
        iconColor: Colors.grey,
        child: Text(repository.forksCount.formatComma),
      ),

      /// イシュー数
      _SmallTile(
        icon: Icons.adjust,
        title: i18n.issue,
        iconColor: Colors.green,
        child: Text(repository.openIssuesCount.formatComma),
      ),
    ];
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
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Align(
                    child: CircleThumbnail(
                      size: 150,
                      url: repository.owner.avatarUrl,
                    ),
                  ),
                  const Gap(10),
                  Center(child: Text(repository.owner.login)),
                  const Gap(30),
                  RichText(
                    text: TextSpan(
                      style: context.titleStyle,
                      children: [
                        TextSpan(text: i18n.repository),
                        TextSpan(
                          text: repository.name,
                          style: context.titleStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),

                  /// リポジトリ概要
                  _DescriptionTile(message: repository.description),
                  const Gap(10)
                ]),
              ),
              SliverGrid.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2,
                crossAxisCount: context.isLandscape ? 5 : 2,
                children: repoDetailTiles,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _DescriptionTile extends ConsumerWidget {
  const _DescriptionTile({required this.message});

  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeSelectorProvider.notifier).isDark(context);
    return Container(
      padding: const EdgeInsets.all(8),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? null : Colors.white70,
        border: Border.all(
          color: context.subTitleStyle.color!,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Text(
          message,
          style: context.subTitleStyle,
        ),
      ),
    );
  }
}

class _SmallTile extends ConsumerWidget {
  const _SmallTile({
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
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeSelectorProvider.notifier).isDark(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: isDark ? null : Colors.white70,
        border: Border.all(
          color: context.subTitleStyle.color!,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isDark ? Colors.grey : iconColor,
              ),
              const Gap(5),
              Text(title),
            ],
          ),
          const Divider(
            height: 1,
            thickness: 3,
          ),
          FittedBox(child: child),
        ],
      ),
    );
  }
}
