import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_search/gen/colors.gen.dart';

ThemeData get appTheme {
  final base = ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorName.primary,
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
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorName.primary,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorName.primary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorName.textColorDark,
        backgroundColor: ColorName.primary,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    iconTheme: base.iconTheme.copyWith(
      color: base.primaryColor,
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
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorName.primary,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorName.primary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorName.textColorDark,
        backgroundColor: ColorName.primary,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    iconTheme: base.iconTheme.copyWith(
      color: base.primaryColor,
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
