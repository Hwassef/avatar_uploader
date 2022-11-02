import 'package:flutter/material.dart';

class UpdateProfilePictureModalBottomSheet extends StatelessWidget {
  const UpdateProfilePictureModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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

                /// show current photo
                GestureDetector(
                  onTap: null,
                  child: ListTile(
                    leading: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 0,
                    title: const Text(
                      "View current photo",
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: null,
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
                  onTap: null,
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
