import 'dart:math';

import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/core/extension/theme_mode_extension.dart';
import 'package:github_repo_search/feature/setting/theme_controller.dart';
import 'package:github_repo_search/gen/colors.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends ConsumerStatefulWidget {
  const SettingPage({super.key});

  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends ConsumerState<SettingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotateAnimation;

  /// アニメーション実行
  void _animationChange() {
    // 一度リセットしてから実行
    _controller
      ..reset()
      ..forward();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // コントローラーの監視
    _controller.addListener(() {
      setState(() {});
    });

    ///アニメーションの挙動
    _rotateAnimation = Tween<double>(
      begin: 0,
      end: 2 * pi,
    ).animate(_controller);
  }

  /// コントローラー破棄
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    activeColor: context.isDark
                        ? ColorName.primary.withOpacity(0.8)
                        : ColorName.primary,
                    value: themeMode,
                    groupValue: currentThemeMode,
                    onChanged: (newTheme) {
                      /// Themeの保存
                      themeSelector.changeAndSave(newTheme!);

                      /// アニメーション実行
                      _animationChange();
                    },
                    title: Align(
                      alignment: Alignment.centerLeft,

                      /// 選択されたThemeのIconだけがアニメーションを実行
                      child: currentThemeMode == themeMode
                          ? AnimatedBuilder(
                              animation: _controller,
                              builder: (BuildContext context, child) => child!,
                              child: Transform.rotate(
                                angle: _rotateAnimation.value,
                                child: Icon(themeMode.iconData),
                              ),
                            )
                          : Icon(themeMode.iconData),
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
