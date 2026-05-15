import 'package:flutter/material.dart';

class AppTheme {
  // Colors from PROTOTYPE.md
  static const Color background = Color(0xFF121212);
  static const Color surface = Color(0xFF1E1E1E);
  static const Color primaryGreen = Color(0xFF00C853);
  static const Color errorRed = Color(0xFFFF5252);
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xFFB0B0B0);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primaryColor: primaryGreen,
    cardColor: surface,
    colorScheme: ColorScheme.dark(
      primary: primaryGreen,
      secondary: primaryGreen,
      surface: surface,
      error: errorRed,
      onPrimary: Colors.black,
      onSurface: textPrimary,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: textPrimary,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
      bodyMedium: TextStyle(
        color: textSecondary,
        fontSize: 16,
        fontFamily: 'Roboto',
      ),
    ),
    useMaterial3: true,
  );
}
