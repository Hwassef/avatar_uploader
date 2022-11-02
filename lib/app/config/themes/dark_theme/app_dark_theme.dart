import 'package:change_profile_avatar/app/config/themes/dark_theme/app_dialog_dark_theme.dart';
import 'package:flutter/material.dart';

import '../../colors/app_dark_mode_colors.dart';
import 'app_modal_bottom_sheet_dark_theme.dart';

class AppDarkTheme {
  AppDarkTheme._();
  static ThemeData darkTheme = ThemeData(
    dialogTheme: AppDialogDarkTheme.dialogTheme,
    bottomSheetTheme: AppModalBottomSheetDarkTheme.bottomSheetThemeData,
    iconTheme: const IconThemeData(
      color: AppDarkModeColors.whiteColor,
      size: 28.0,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      titleLarge: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: AppDarkModeColors.whiteColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        color: AppDarkModeColors.whiteColor,
      ),
    ),
  );
}
