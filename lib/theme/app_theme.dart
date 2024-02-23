import 'package:flutter/material.dart';

class AppTheme {

  static const Color global = Colors.blue;

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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: global,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: global,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: global,
            width: 2,
          ),
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
        foregroundColor: Colors.black,
        backgroundColor: global,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: global,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: global,
          width: 2,
        ),
      ),
    ),
  );
}