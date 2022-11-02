import 'package:change_profile_avatar/app/config/themes/dark_theme/app_dialog_dark_theme.dart';
import 'package:flutter/material.dart';

import 'app_modal_bottom_sheet_dark_theme.dart';

class AppDarkTheme {
  AppDarkTheme._();
  static ThemeData darkTheme = ThemeData(
    dialogTheme: AppDialogDarkTheme.dialogTheme,
    bottomSheetTheme: AppModalBottomSheetDarkTheme.bottomSheetThemeData,
  );
}
