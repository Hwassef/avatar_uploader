import 'package:change_profile_avatar/app/config/colors/app_light_mode_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class AppDialogLightTheme {
  AppDialogLightTheme._();
  static const DialogTheme dialogTheme = DialogTheme(
    backgroundColor: AppLightModeColors.lightBlueColor,
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: AppConstants.smallBorderRadius,
      side: BorderSide(
        color: AppLightModeColors.blackColor,
        width: 1,
      ),
    ),
  );
}
