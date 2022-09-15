import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/utils/provider.dart';

/// SharedPreferences で使用するテーマ保存用のキー
const _themePrefsKey = 'selectedTheme';

final themeSelectorProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(ref.read),
);

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier(this._read) : super(ThemeMode.system) {
    // `SharedPreferences` を使用して、記憶しているテーマがあれば取得して反映する。
    final themeIndex = _prefs.getInt(_themePrefsKey);
    if (themeIndex == null) {
      return;
    }
    final themeMode = ThemeMode.values.firstWhere(
      (e) => e.index == themeIndex,
      orElse: () => ThemeMode.system,
    );
    state = themeMode;
  }

  final Reader _read;

  // 選択したテーマを保存するためのローカル保存領域
  late final _prefs = _read(sharedPreferencesProvider);

  // テーマの変更と保存を行う
  Future<void> changeAndSave(ThemeMode theme) async {
    await _prefs.setInt(_themePrefsKey, theme.index);
    state = theme;
  }

  // ダークモード判定
  bool isDark(BuildContext context) {
    if (state == ThemeMode.system) {
      return context.isDark;
    } else {
      return state == ThemeMode.dark;
    }
  }
}
