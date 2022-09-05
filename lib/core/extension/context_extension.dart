import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  /// ダークモード
  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;

  /// 端末サイズ
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  bool get isIphoneMiniSize =>
      deviceWidth == 320 && deviceHeight == 568; // iPhone SE 1st
  double get appBarHeight => MediaQuery.of(this).padding.top + kToolbarHeight;

  /// プラットフォーム
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  /// 端末の向き
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  /// 色
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get errorColor => Theme.of(this).errorColor;

  /// テキストスタイル
  TextStyle get titleStyle => Theme.of(this).textTheme.titleMedium!;
  TextStyle get subTitleStyle => Theme.of(this).textTheme.titleSmall!;
  TextStyle get bodyStyle => Theme.of(this).textTheme.bodyText2!;
  TextStyle get smallStyle => Theme.of(this).textTheme.caption!;
  TextStyle get verySmallStyle =>
      Theme.of(this).textTheme.caption!.copyWith(fontSize: 10);

  /// キーボードからフォーカスを外す
  void hideKeyboard() {
    final currentScope = FocusScope.of(this);
    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  /// スナックバーの表示
  void showSnackBar(
    String text, {
    Duration duration = const Duration(milliseconds: 1500),
    VoidCallback? onTap,
    String? closeLabel,
  }) {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: duration,
        action: closeLabel != null
            ? SnackBarAction(
                label: closeLabel,
                onPressed: () {
                  if (onTap != null) {
                    onTap();
                  }
                },
              )
            : null,
      ),
    );
  }
}
