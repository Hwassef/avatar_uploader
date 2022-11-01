import 'package:flutter/material.dart';

import '../../colors/app_light_mode_colors.dart';

class AppModalBottomSheetLightTheme {
  AppModalBottomSheetLightTheme._();
  static const BottomSheetThemeData bottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: AppLightModeColors.lightBlueColor,
    modalBackgroundColor: AppLightModeColors.lightBlueColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12.0),
        topLeft: Radius.circular(12.0),
      ),
    ),
    modalElevation: 8.0,
  );
}
