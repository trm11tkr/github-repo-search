import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
import 'package:github_repo_search/utils/logger.dart';
import 'package:github_repo_search/utils/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // fast_i18n初期化
  LocaleSettings.useDeviceLocale();

  // Logger初期化
  Logger.configure();

  runApp(
    ProviderScope(
      overrides: [
        // SharedPreferences初期化(プロバイダーの上書き)
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        )
      ],

      // TranslationProvider: ローカライズ用プロバイダー
      child: TranslationProvider(child: const App()),
    ),
  );
}
