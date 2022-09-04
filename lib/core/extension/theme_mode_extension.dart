import 'package:flutter/material.dart';

extension ThemeModeExtension on ThemeMode {
  String get subtitle {
    switch (this) {
      case ThemeMode.system:
        return '端末の設定';
      case ThemeMode.light:
        return 'ライトモード';
      case ThemeMode.dark:
        return 'ダークモード';
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
