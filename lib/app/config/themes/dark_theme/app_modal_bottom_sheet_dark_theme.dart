import 'package:flutter/material.dart';

import '../../colors/app_dark_mode_colors.dart';

class AppModalBottomSheetDarkTheme {
  AppModalBottomSheetDarkTheme._();
  static const BottomSheetThemeData bottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: AppDarkModeColors.darkBlueColor,
    modalBackgroundColor: AppDarkModeColors.darkBlueColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12.0),
        topLeft: Radius.circular(12.0),
      ),
    ),
    modalElevation: 8.0,
  );
}
