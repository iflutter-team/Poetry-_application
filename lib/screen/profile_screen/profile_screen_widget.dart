

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:poetry/common/common_container.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/screen/profile_screen/profile_screen_controller.dart';

import '../../common/padding_widget.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../edit_profile/edit_profile_controller.dart';

double w = Get.width;
double h = Get.height;

AppBar appbarProfile(
    {required void Function()? actionIconOnPressed,
    required Widget actionIcon}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: ColorRes.whiteColor,
    foregroundColor: ColorRes.greenColor,
    leadingWidth: w * 0.13,
    title: commonTextWidget(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        text: StringRes.profileTitle),
    leading: paddingWidget(
      left: w * 0.05,
      bottom: h * 0.0,
      right: w * 0.0,
      top: h * 0.0,
      widget: Image.asset(AssetRes.homeAppBarMenuImg),
    ),
    actions: [
      IconButton(
        onPressed: actionIconOnPressed,
        icon: actionIcon,
      )
    ],
  );
}

Widget profileView({ImageProvider<Object>? backgroundImage,void Function()? InkwellonTap}) {
  return GetBuilder<ProfileScreenController>(
    id: 'imagePicker',
    builder: (controller) {
      return commonContainer(
          height: h * 0.24,
          width: w * 0.90,
          child: Column(
            children: [
               InkWell(
                 onTap: InkwellonTap,
                 // controller.imagePickerCondition,
                 child: CircleAvatar(
                  radius: 60,
                  backgroundImage: backgroundImage
                  // controller.file==null
                  // ?const AssetImage(AssetRes.irianaProfileImage):FileImage(controller.file!) as ImageProvider,
                 ),
               ),
              SizedBox(
                height: h * 0.007,
              ),
              commonTextWidget(
                  color: ColorRes.usernameStringColor,
                  text: StringRes.usernameProfile,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: h * 0.007,
              ),
              commonTextWidget(
                  color: ColorRes.emailStringColor,
                  text: StringRes.emailProfile,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ],
          ));
    }
  );
}

Widget profileDataField() {
  return commonContainer(
    margin: EdgeInsets.all(h * 0.03),
    padding: EdgeInsets.all(h * 0.02),
    height: 325,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        // color: Colors.green,
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.white24.withOpacity(0.2),
              Colors.white12.withOpacity(0)
            ])),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        commonTextWidget(
          text: StringRes.username,
          color: ColorRes.formStringColor,
          fontSize: 13,
        ),
        commonDisableTextFieldProfile(enabled: false),
        SizedBox(
          height: h * 0.030,
        ),
        commonTextWidget(
          text: StringRes.email,
          color: ColorRes.formStringColor,
          fontSize: 13,
        ),
        commonDisableTextFieldProfile(enabled: false),
        SizedBox(
          height: h * 0.030,
        ),
        commonTextWidget(
          text: StringRes.gender,
          color: ColorRes.formStringColor,
          fontSize: 13,
        ),
        commonDisableTextFieldProfile(enabled: false),
        SizedBox(
          height: h * 0.020,
        ),
        commonTextWidget(
          text: StringRes.dob,
          color: ColorRes.formStringColor,
          fontSize: 13,
        ),
        commonDisableTextFieldProfile(enabled: false)
      ],
    ),
  );
}

Widget commonDisableTextFieldProfile({bool? enabled}) {
  return SizedBox(
      height: h * 0.04,
      child: TextFormField(
        obscureText: false,
        enabled: enabled,
        style: const TextStyle(color: ColorRes.whiteColor),
        decoration: const InputDecoration(
          //border: InputBorder.none,
          disabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          // enabledBorder:
          //     UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          isCollapsed: true,
          contentPadding: EdgeInsets.all(8),
        ),
      ));
}
