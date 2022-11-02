import 'dart:io';

import 'package:change_profile_avatar/app/data/services/permission/permission_service.dart';
import 'package:flutter/cupertino.dart';

enum AppImageSource {
  camera,
  gallery,
}

abstract class MediaService {
  PermissionService get permissionService;
  Future<File?> uploadImage({required BuildContext context, AppImageSource appImageSource});
}
