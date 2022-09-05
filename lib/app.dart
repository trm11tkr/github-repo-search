import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_repo_search/core/model/github_repos_state.dart';
import 'package:github_repo_search/core/res/app_theme.dart';
import 'package:github_repo_search/core/services/api/repo_search_client.dart';
import 'package:github_repo_search/feature/navigation/navigation_page.dart';
import 'package:github_repo_search/feature/setting/theme_controller.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
import 'package:github_repo_search/utils/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'GitHub Search App',
      theme: appTheme,
      darkTheme: appThemeDark,
      themeMode: ref.watch(themeSelectorProvider),
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: LocaleSettings.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const NavigationPage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub'),
      ),
      body: const Center(
        child: Text('Let\'s start the program!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final items = await ref.watch(repoSearchClientProvider).get(
            queryParameters: <String, dynamic>{'q': 'YUMEMI'},
            fromJson: GithubReposState.fromJson,
          );
          logger.info(items);
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
