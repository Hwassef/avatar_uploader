import 'dart:io';

import 'package:change_profile_avatar/app/data/services/media_service.dart';
import 'package:change_profile_avatar/app/data/services/permission/permission_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

class MediaServiceImplementation implements MediaService {
  @override
  PermissionService get permissionService => GetIt.I<PermissionService>();
  Future<bool> _handleImageUploadPermissions(BuildContext context, AppImageSource? _imageSource) async {
    if (_imageSource == null) {
      return false;
    }
    if (_imageSource == AppImageSource.camera) {
      return await permissionService.handleCameraPermission(context: context);
    } else if (_imageSource == AppImageSource.gallery) {
      return await permissionService.handlePhotosPermission(context: context);
    } else {
      return false;
    }
  }

  @override
  Future<File?> uploadImage({required BuildContext context, AppImageSource? appImageSource}) async {
    bool canProceed = await _handleImageUploadPermissions(context, appImageSource);
    if (canProceed) {
      File? processedPickedImageFile;

      // Convert our own AppImageSource into a format readable by the used package
      // In this case it's an ImageSource enum
      ImageSource? imageSource = ImageSource.values.byName(appImageSource?.name ?? 'camera');

      final imagePicker = ImagePicker();
      final rawPickedImageFile = await imagePicker.pickImage(
        source: imageSource,
      );
      if (rawPickedImageFile != null) {
        //to convert from XFile type provided by the package to dart:io's File type
        processedPickedImageFile = File(rawPickedImageFile.path);
      }

      return processedPickedImageFile;
    }
    return null;
  }
}
