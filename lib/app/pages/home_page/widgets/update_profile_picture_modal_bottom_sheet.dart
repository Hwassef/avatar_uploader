import 'package:change_profile_avatar/app/data/services/media_service.dart';
import 'package:change_profile_avatar/app/pages/home_page/bloc/home_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class UpdateProfilePictureModalBottomSheet extends StatelessWidget {
  const UpdateProfilePictureModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaService mediaService = GetIt.I<MediaService>();
    final HomePageBloc homePageBloc = GetIt.I<HomePageBloc>();
    return FittedBox(
      fit: BoxFit.fill,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          top: 32.0,
          bottom: 36.0,
          right: 36.0,
          left: 36.0,
        ),
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Change profile photo",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                GestureDetector(
                  onTap: () => mediaService.uploadImage(context: context, appImageSource: AppImageSource.camera).then(
                        (value) => homePageBloc.add(
                          ProfilaAvatarChanged(profileImage: value),
                        ),
                      ),
                  child: ListTile(
                    leading: Icon(
                      Icons.camera_alt_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 0,
                    title: const Text(
                      "Use camera",
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => mediaService.uploadImage(context: context, appImageSource: AppImageSource.gallery).then(
                        (value) => homePageBloc.add(
                          ProfilaAvatarChanged(profileImage: value),
                        ),
                      ),
                  child: ListTile(
                    leading: Icon(
                      Icons.upload,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 0,
                    title: const Text(
                      "Upload from gallery",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
