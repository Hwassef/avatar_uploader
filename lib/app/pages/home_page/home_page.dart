import 'package:change_profile_avatar/app/pages/widgets/update_profile_picture_modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: CircleAvatar(
                radius: 58,
                backgroundImage: const NetworkImage(
                  "https://image.similarpng.com/thumbnail/2020/04/Instagram-logo-modern-paint-splash-social-media-png.png",
                ),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () => showModalBottomSheet(
                        context: context,
                        builder: (_) => const UpdateProfilePictureModalBottomSheet(),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white70,
                          child: Icon(CupertinoIcons.camera),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
