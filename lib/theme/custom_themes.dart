import 'package:flutter/material.dart';
var kColorscheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));
var kDarkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 5, 99, 125),
    brightness: Brightness.dark);
class CustomThemes {
  final dark=ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.onPrimary,
          foregroundColor: kDarkColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData.dark().textTheme.copyWith(
            titleLarge: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            bodyLarge: TextStyle(
                fontSize: 24,
                color: kDarkColorScheme.primary,
                fontWeight: FontWeight.bold),
            labelLarge: TextStyle(
                fontSize: 18,
                color: kDarkColorScheme.onSecondary,
                fontWeight: FontWeight.bold)),
      );
  final light=ThemeData().copyWith(
        colorScheme: kColorscheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorscheme.onPrimary,
          foregroundColor: kColorscheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorscheme.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorscheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              // color: Colors.blue,
            ),
            bodyLarge:  TextStyle(
                fontSize: 24,
                color: kColorscheme.onSecondaryContainer,
                fontWeight: FontWeight.bold),
            labelLarge: const TextStyle(
                fontSize: 18,
                // color: kColorscheme.primaryContainer,
                fontWeight: FontWeight.bold,
                // color: Colors.blue,
                ),),
      );
}