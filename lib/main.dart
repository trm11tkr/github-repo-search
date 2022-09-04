import 'package:flutter/material.dart';
import 'package:github_repo_search/utils/logger.dart';
import 'package:github_repo_search/utils/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.configure();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        )
      ],
      child: const App(),
    ),
  );
}
