import 'package:change_profile_avatar/app/config/colors/app_light_mode_colors.dart';
import 'package:change_profile_avatar/app/config/themes/light_theme/app_dialog_light_theme.dart';
import 'package:flutter/material.dart';

import 'app_modal_bottom_sheet_light_theme.dart';

class AppLightTheme {
  AppLightTheme._();
  static ThemeData lightTheme = ThemeData(
    dialogTheme: AppDialogLightTheme.dialogTheme,
    bottomSheetTheme: AppModalBottomSheetLightTheme.bottomSheetThemeData,
    textTheme: const TextTheme(
        bodyText2: TextStyle(
      fontSize: 14,
      color: AppLightModeColors.blackColor,
    )),
  );
}
