import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/theme_mode_extension.dart';
import 'package:github_repo_search/feature/setting/theme_controller.dart';
import 'package:github_repo_search/gen/colors.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // <StateNotifier>ThemeSelectorのインスタンスを監視
    final themeSelector = ref.watch(themeSelectorProvider.notifier);
    // 現在選択されているThemeModeを監視
    final currentThemeMode = ref.watch(themeSelectorProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemeMode select'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemCount: ThemeMode.values.length,
                itemBuilder: (_, index) {
                  final themeMode = ThemeMode.values[index];
                  return RadioListTile<ThemeMode>(
                    activeColor: ColorName.primary,
                    value: themeMode, // ラジオボタンのvalue(ThemeModeのenum)
                    groupValue: currentThemeMode, // 現在選択されているボタン
                    onChanged: (newTheme) {
                      themeSelector.changeAndSave(newTheme!);
                    },

                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(themeMode.iconData),
                    ),
                    subtitle: Text(themeMode.subtitle),
                    selected: currentThemeMode == themeMode,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
