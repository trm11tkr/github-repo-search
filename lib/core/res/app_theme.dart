import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_search/gen/colors.gen.dart';

ThemeData get appTheme {
  final base = ThemeData(
    brightness: Brightness.light,
  );
  return base.copyWith(
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: ColorName.primary,
      textTheme: ButtonTextTheme.normal,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: ColorName.primary,
      elevation: 2,
    ),
    snackBarTheme: base.snackBarTheme.copyWith(
      contentTextStyle: const TextStyle(color: Color(0xFFE6E6E6)),
      actionTextColor: const Color(0xFFE6E6E6),
    ),
    progressIndicatorTheme: base.progressIndicatorTheme.copyWith(
      color: ColorName.primary,
    ),
    textTheme: base.textTheme.copyWith(
      titleMedium: base.textTheme.titleMedium!
          .copyWith(fontSize: 16, color: ColorName.textColor),
      titleSmall: base.textTheme.titleSmall!
          .copyWith(fontSize: 14, color: ColorName.textSubColor),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: ColorName.primary,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      backgroundColor: ColorName.textFieldColor,
      selectedItemColor: ColorName.primary,
      unselectedItemColor: Colors.black.withOpacity(0.4),
    ),
    cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: ColorName.backgroundLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith(
          (state) => const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (state) => Colors.black,
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (state) => ColorName.primary,
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: ColorName.textColor,
    ),
    dividerTheme: base.dividerTheme.copyWith(
      color: ColorName.textSubColor.withAlpha(100),
    ),
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      fillColor: ColorName.textFieldColor,
    ),
    textSelectionTheme: base.textSelectionTheme.copyWith(
      cursorColor: ColorName.primary,
      selectionHandleColor: ColorName.primary,
    ),
    listTileTheme: base.listTileTheme.copyWith(
      selectedColor: Colors.yellow,
    ),
    checkboxTheme: base.checkboxTheme.copyWith(
      fillColor: MaterialStateProperty.all(
        base.primaryColor,
      ),
    ),
  );
}

ThemeData get appThemeDark {
  final base = ThemeData.from(colorScheme: const ColorScheme.dark());
  return base.copyWith(
    primaryColor: ColorName.primaryDark,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: ColorName.primary,
      textTheme: ButtonTextTheme.normal,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: ColorName.backgroundDark,
    ),
    snackBarTheme: base.snackBarTheme.copyWith(
      contentTextStyle: const TextStyle(color: Color(0xFF444444)),
      actionTextColor: const Color(0xFF444444),
    ),
    progressIndicatorTheme: base.progressIndicatorTheme.copyWith(
      color: ColorName.textColorDark,
    ),
    textTheme: base.textTheme.copyWith(
      titleMedium: base.textTheme.titleMedium!
          .copyWith(fontSize: 16, color: ColorName.textColorDark),
      titleSmall: base.textTheme.titleSmall!
          .copyWith(fontSize: 14, color: ColorName.textSubColorDark),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: ColorName.primary,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      backgroundColor: ColorName.textFieldColorDark,
      selectedItemColor: ColorName.primary,
      unselectedItemColor: ColorName.textSubColorDark,
    ),
    cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: ColorName.backgroundDark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith(
          (state) => const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (state) => ColorName.textColorDark,
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (state) => ColorName.primary,
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: ColorName.textSubColorDark,
    ),
    dividerTheme: base.dividerTheme.copyWith(
      color: ColorName.textSubColorDark.withAlpha(150),
    ),
    textSelectionTheme: base.textSelectionTheme.copyWith(
      cursorColor: ColorName.textSubColorDark,
      selectionHandleColor: ColorName.textSubColorDark,
    ),
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      fillColor: ColorName.textFieldColorDark,
    ),
    checkboxTheme: base.checkboxTheme.copyWith(
      fillColor: MaterialStateProperty.all(
        base.primaryColor,
      ),
    ),
  );
}
