import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/profile_screen/profile_screen_common.dart';
import 'package:poetry/screen/profile_screen/profile_screen_controller.dart';

import '../../utils/color_res.dart';
import '../edit_profile/edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(ProfileScreenController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: appbarProfile(
          actionIcon: const Icon(
            Icons.edit,
          ),
          actionIconOnPressed: () {
            Get.to(const EditProfile());
          }),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.03,
            ),
            profileView(),
            profileDataField(),
          ],
        ),
      ),
    );
  }
}
