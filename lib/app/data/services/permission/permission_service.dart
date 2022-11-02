import 'package:flutter/cupertino.dart';

abstract class PermissionService {
  Future requestPhotosPermission();
  Future<bool> handlePhotosPermission({required BuildContext context});
  Future requestCameraPermission();
  Future<bool> handleCameraPermission({required BuildContext context});
}
