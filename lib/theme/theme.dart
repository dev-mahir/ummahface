import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      background: AppColors.background,
    ),
    scaffoldBackgroundColor: AppColors.background,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.textPrimary), // Default Text
      bodyMedium: TextStyle(color: AppColors.textSecondary), // Secondary Text
      bodySmall: TextStyle(color: AppColors.textDisabled), // Disabled Text
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimary,
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
      secondary: AppColors.darkAccent,
      background: AppColors.darkBackground,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.darkTextPrimary), // Default Text
      bodyMedium: TextStyle(
        color: AppColors.darkTextSecondary,
      ), // Secondary Text
      bodySmall: TextStyle(color: AppColors.darkTextDisabled), // Disabled Text
    ),
  );
}
