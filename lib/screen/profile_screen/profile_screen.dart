import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/profile_screen/profile_screen_widget.dart';
import 'package:poetry/screen/profile_screen/profile_screen_controller.dart';
import 'package:poetry/utils/asset_res.dart';

import '../../utils/color_res.dart';
import '../edit_profile/edit_profile.dart';
import '../home_screen/home_screen_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileScreenController());
    double h =Get.height;
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: appbarProfile(
          actionIcon: const Icon(
            Icons.edit,
          ),
          actionIconOnPressed: () {
            Get.to(const EditProfile());
          }),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: h * 0.03,
              ),
              GetBuilder<ProfileScreenController>(
                  id: 'imagePickerProfileScreen',
                  builder: (controller) {
                    return profileView(
                        backgroundImage: (controller.file == null)
                            ? AssetImage(AssetRes.irianaProfileImage)
                            : FileImage(controller.file!) as ImageProvider);
                  }),
              profileDataField(),
            ],
          ),
          containerConditionProfile(),
          animatedContainer(context),
        ],
      ),
    );
  }
}
