import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_search/gen/colors.gen.dart';
import 'package:github_repo_search/gen/fonts.gen.dart';

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
      titleTextStyle: const TextStyle(
        fontSize: 40,
        fontFamily: FontFamily.mPLUSRounded1c,
        fontWeight: FontWeight.w900,
      ),
      elevation: 2,
    ),
    snackBarTheme: base.snackBarTheme.copyWith(
      contentTextStyle: const TextStyle(
        color: Color(0xFFE6E6E6),
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
      actionTextColor: const Color(0xFFE6E6E6),
    ),
    progressIndicatorTheme: base.progressIndicatorTheme.copyWith(
      color: ColorName.primary,
    ),
    textTheme: base.textTheme.copyWith(
      titleMedium: base.textTheme.titleMedium!.copyWith(
        fontSize: 16,
        color: ColorName.textColor,
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
      titleSmall: base.textTheme.titleSmall!.copyWith(
        fontSize: 14,
        color: ColorName.textSubColor,
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
      bodyMedium: base.textTheme.bodyMedium!.copyWith(
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: ColorName.primary,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      selectedLabelStyle:
          const TextStyle(fontFamily: FontFamily.mPLUSRounded1c),
      unselectedLabelStyle:
          const TextStyle(fontFamily: FontFamily.mPLUSRounded1c),
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
          (state) => const TextStyle(
            fontFamily: FontFamily.mPLUSRounded1c,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => Colors.white),
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
      errorStyle: const TextStyle(fontFamily: FontFamily.mPLUSRounded1c),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      fillColor: ColorName.textFieldColor,
    ),
    textSelectionTheme: base.textSelectionTheme.copyWith(
      cursorColor: ColorName.primary,
      selectionHandleColor: ColorName.primary,
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
      titleTextStyle: const TextStyle(
        fontSize: 40,
        fontFamily: FontFamily.mPLUSRounded1c,
        fontWeight: FontWeight.w900,
      ),
      backgroundColor: ColorName.backgroundDark,
    ),
    snackBarTheme: base.snackBarTheme.copyWith(
      contentTextStyle: const TextStyle(
        color: Color(0xFF444444),
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
      actionTextColor: const Color(0xFF444444),
    ),
    progressIndicatorTheme: base.progressIndicatorTheme.copyWith(
      color: ColorName.textColorDark,
    ),
    textTheme: base.textTheme.copyWith(
      titleMedium: base.textTheme.titleMedium!.copyWith(
        fontSize: 16,
        color: ColorName.textColorDark,
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
      titleSmall: base.textTheme.titleSmall!.copyWith(
        fontSize: 14,
        color: ColorName.textSubColorDark,
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
      bodyMedium: base.textTheme.bodyMedium!.copyWith(
        fontFamily: FontFamily.mPLUSRounded1c,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: ColorName.primary,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      selectedLabelStyle:
          const TextStyle(fontFamily: FontFamily.mPLUSRounded1c),
      unselectedLabelStyle:
          const TextStyle(fontFamily: FontFamily.mPLUSRounded1c),
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
          (state) => const TextStyle(
            fontFamily: FontFamily.mPLUSRounded1c,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
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
      errorStyle: const TextStyle(fontFamily: FontFamily.mPLUSRounded1c),
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
