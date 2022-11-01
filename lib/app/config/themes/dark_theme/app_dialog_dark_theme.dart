import 'package:flutter/material.dart';

import '../../colors/app_dark_mode_colors.dart';
import '../../constants/app_constants.dart';

class AppDialogDarkTheme {
  AppDialogDarkTheme._();
  static const DialogTheme dialogTheme = DialogTheme(
    backgroundColor: AppDarkModeColors.darkBlueColor,
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: AppConstants.smallBorderRadius,
      side: BorderSide(
        color: AppDarkModeColors.whiteColor,
        width: 1,
      ),
    ),
  );
}
