import 'package:change_profile_avatar/app/data/services/permission/permission_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../utils/principal_functions.dart';

class PermissionHandlerPermissionService implements PermissionService {
  @override
  Future<bool> handleCameraPermission({required BuildContext context}) async {
    PermissionStatus cameraPermissionStatus = await requestCameraPermission();

    if (cameraPermissionStatus != PermissionStatus.granted) {
      await showOpenSettingsAlertDialog(context: context);
      return false;
    }
    return true;
  }

  @override
  Future<bool> handlePhotosPermission({required BuildContext context}) async {
    PermissionStatus photosPermissionStatus = await requestPhotosPermission();

    if (photosPermissionStatus != PermissionStatus.granted) {
      await showOpenSettingsAlertDialog(context: context);
      return false;
    }
    return true;
  }

  @override
  Future<PermissionStatus> requestCameraPermission() async {
    return await Permission.camera.request();
  }

  @override
  Future<PermissionStatus> requestPhotosPermission() async {
    return await Permission.photos.request();
  }
}
