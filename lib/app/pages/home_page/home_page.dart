import 'package:change_profile_avatar/app/pages/home_page/widgets/update_profile_picture_modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../utils/principal_functions.dart';
import 'bloc/home_page_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                    return CircleAvatar(
                      radius: 58,
                      backgroundImage: state.profileImage != null
                          ? Image.file(state.profileImage!).image
                          : const NetworkImage(
                              'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png'),
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
