import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  Color get primaryColor => Theme.of(this).primaryColor;
  TextStyle get titleStyle => Theme.of(this).textTheme.titleMedium!;
  TextStyle get subTitleStyle => Theme.of(this).textTheme.titleSmall!;
  TextStyle get bodyStyle => Theme.of(this).textTheme.bodyText2!;
  TextStyle get smallStyle => Theme.of(this).textTheme.caption!;
  TextStyle get verySmallStyle =>
      Theme.of(this).textTheme.caption!.copyWith(fontSize: 10);
  bool get isIphoneMiniSize =>
      deviceWidth == 320 && deviceHeight == 568; // iPhone SE 1st
  double get appBarHeight => MediaQuery.of(this).padding.top + kToolbarHeight;

  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get errorColor => Theme.of(this).errorColor;

  void showSnackBar(
    String text, {
    Duration duration = const Duration(milliseconds: 1500),
    VoidCallback? onTap,
    String? closeLabel,
  }) {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: TextStyle(
            color: isDark ? const Color(0xFF444444) : const Color(0xFFE6E6E6),
          ),
        ),
        duration: duration,
        action: closeLabel != null
            ? SnackBarAction(
                label: closeLabel,
                textColor:
                    isDark ? const Color(0xFF444444) : const Color(0xFFE6E6E6),
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
