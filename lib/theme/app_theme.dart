import 'package:flutter/material.dart';

class AppTheme {

  static const Color global = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: global,
    appBarTheme: const AppBarTheme(
      backgroundColor: global
    ),
    iconTheme: const IconThemeData(
      color: global,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: global,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: global,
    appBarTheme: const AppBarTheme(
      backgroundColor: global,
    ),
    iconTheme: const IconThemeData(
      color: global,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: global,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: global,
        backgroundColor: global,
      ),
    ),
  );
}