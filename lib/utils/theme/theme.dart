import 'package:flutter/material.dart';

class TAppTheme {

 static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.light
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
    ),
  );

 static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.dark
    ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
  );
}