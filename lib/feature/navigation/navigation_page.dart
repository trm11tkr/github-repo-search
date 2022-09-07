import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/feature/github_repo/presentation/pages/github_repo_list_page.dart';
import 'package:github_repo_search/feature/setting/setting_page.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

enum PageType {
  /// リポジトリ一覧
  repos,

  /// セッティング
  setting,
}

/// ページタイププロバイダー
final pageController = StateProvider<PageType>(
  (ref) => PageType.repos,
);

class NavigationPage extends ConsumerWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(pageController.state);

    const pages = [
      GithubRepoListPage(),
      SettingPage(),
    ];

    final bottomNavigationBarItems = [
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.manage_search_outlined,
        ),
        label: i18n.navLabelSearch,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.settings,
        ),
        label: i18n.navLabelSettings,
      ),
    ];

    return Scaffold(
      body: pages[currentPage.state.index],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems,
        currentIndex: currentPage.state.index,
        onTap: (int index) =>
            currentPage.update((state) => PageType.values[index]),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
