import 'package:flutter/material.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

extension ThemeModeExtension on ThemeMode {
  String get subtitle {
    switch (this) {
      case ThemeMode.system:
        return i18n.themeTerminate;
      case ThemeMode.light:
        return i18n.themeLightMode;
      case ThemeMode.dark:
        return i18n.themeDarkMode;
    }
  }

  IconData get iconData {
    switch (this) {
      case ThemeMode.system:
        return Icons.settings;
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
    }
  }
}
