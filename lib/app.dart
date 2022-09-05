import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_repo_search/core/res/app_theme.dart';
import 'package:github_repo_search/feature/navigation/navigation_page.dart';
import 'package:github_repo_search/feature/setting/theme_controller.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
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
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const NavigationPage(),
    );
  }
}
