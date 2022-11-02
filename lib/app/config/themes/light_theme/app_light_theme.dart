import 'package:change_profile_avatar/app/config/colors/app_light_mode_colors.dart';
import 'package:change_profile_avatar/app/config/themes/light_theme/app_dialog_light_theme.dart';
import 'package:flutter/material.dart';

import 'app_modal_bottom_sheet_light_theme.dart';

class AppLightTheme {
  AppLightTheme._();
  static ThemeData lightTheme = ThemeData(
    dialogTheme: AppDialogLightTheme.dialogTheme,
    bottomSheetTheme: AppModalBottomSheetLightTheme.bottomSheetThemeData,
    iconTheme: const IconThemeData(
      color: AppLightModeColors.blackColor,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      titleLarge: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: AppLightModeColors.blackColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        color: AppLightModeColors.blackColor,
      ),
    ),
  );
}
