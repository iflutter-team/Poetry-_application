import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/circleavatar_widget.dart';
import 'dart:io';
import '../../common/common_container.dart';
import '../../common/login_signup_button.dart';
import '../../common/text_widget.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../profile_screen/profile_screen_widget.dart';
import 'edit_profile_controller.dart';

Widget profilePhoto() {
  return Stack(
    children: [
      GetBuilder<EditProfileController>(
        id: 'imagePicker',
        builder: (controller) {
          return profileView(
            InkwellonTap: controller.imagePickerCondition,
            backgroundImage: controller.file == null
                ? const AssetImage(AssetRes.irianaProfileImage)
                : FileImage(controller.file!) as ImageProvider,
          );
        },
      ),
      Padding(
        padding: EdgeInsets.only(top: h * 0.11, left: w * 0.5),
        child: const CircleAvatar(
          backgroundColor: Colors.black,
          radius: 15,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    ],
  );
}

Widget editDataField() {
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
        commonDisableTextFieldProfile(),
        SizedBox(
          height: h * 0.030,
        ),
        commonTextWidget(
          text: StringRes.email,
          color: ColorRes.formStringColor,
          fontSize: 13,
        ),
        commonDisableTextFieldProfile(),
        SizedBox(
          height: h * 0.030,
        ),
        commonTextWidget(
          text: StringRes.gender,
          color: ColorRes.formStringColor,
          fontSize: 13,
        ),
        commonDisableTextFieldProfile(),
        SizedBox(
          height: h * 0.020,
        ),
        commonTextWidget(
          text: StringRes.dob,
          color: ColorRes.formStringColor,
          fontSize: 13,
        ),
        commonDisableTextFieldProfile()
      ],
    ),
  );
}

Widget saveButton() {
  return GetBuilder<EditProfileController>(
      id: 'login',
      builder: (controller) {
        return commonBottomLoginORSignUpButton(
            leftPadding: w * 0.32,
            rightPadding: w * 0.32,
            topPadding: h * 0.02,
            bottomPadding: h * 0.02,
            onPressed: controller.saveButton,
            buttonText: StringRes.saveButtonText);
      });
}
