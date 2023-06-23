import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../profile_screen/profile_screen_widget.dart';
import 'edit_profile_controller.dart';
import 'edit_profile_widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EditProfileController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.profileTitle,
        leadingIcon: Icons.arrow_back_sharp,
        actionIcon: Icons.favorite, onTap: () { Get.back(); },
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.03,
              ),
              profilePhoto(),
              editDataField(),
              SizedBox(
                height: h * 0.05,
              ),
              saveButton(),
            ],
          ),
        ),
      ),
    );
  }
}
