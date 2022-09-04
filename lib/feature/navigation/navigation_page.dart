import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/presentation/pages/github_repo_list_page.dart';
import 'package:github_repo_search/feature/setting/setting_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.manage_search_outlined,
        ),
        label: '検索',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
        ),
        label: '設定',
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
