import 'package:flutter/material.dart'
    show Color, Colors, ThemeData, AppBarTheme, TextButtonThemeData, TextButton;

class AppTheme {
  static const Color primaryColor = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
        color: primaryColor, elevation: 10, shadowColor: Colors.white),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primaryColor)),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
          color: primaryColor, elevation: 10, shadowColor: Colors.white),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)));
}
