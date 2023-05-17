import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/back_arrow_widget.dart';
import 'package:poetry/common/icon_widget.dart';
import 'package:poetry/common/login_signup_button.dart';
import 'package:poetry/common/textfield_widget.dart';
import 'package:poetry/screen/forgetpassword_screen/forgetpassword_screen_controller.dart';
import 'package:poetry/utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

Widget forGetScreenArrow() {
  return GetBuilder<ForGetController>(
      builder: (controller) {
        return backArrow(onPressed:controller.forGetBackArrow);
      }
  );
}


Widget forGetEmailTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<ForGetController>(
      id: 'forGetEmail',
      builder: (controller) {
        return commonTextField(
          controller: controller.forgetEmail,
          validator: controller.forGetEmailCondition,
          hintTextString: StringRes.emailString,
          width: w * 0.893,
          height: h * 0.067,
          obscureText: false,
        );
      });
}

Widget forgetPassTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<ForGetController>(
      id: 'forGetPassword',
      builder: (controller) {
        return commonTextField(
          controller: controller.forgetPassword,
          validator: controller.forGetPassWordCondition,
          suffixIcon: iconWidget(
              onPressed: controller.forGetPassSuFix,
              icon: Icon(
                controller.forGetVisiBal
                    ? IconRes.visiBalOffIcon
                    : IconRes.visiBalIcon,
                color: ColorRes.whiteColor,
              )),
          hintTextString: StringRes.passWordString,
          width: w * 0.893,
          height: h * 0.067,
          obscureText: controller.forGetVisiBal ? true : false,
        );
      });
}

Widget forgetNewPassTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<ForGetController>(
      id: 'forGetNewPassword',
      builder: (controller) {
        return commonTextField(
          controller: controller.createNewPassword,
          validator: controller.forGetPassWordCondition,
          suffixIcon: iconWidget(
              onPressed: controller.forGetNewPassSuFix,
              icon: Icon(
                controller.forGetNewVisiBal
                    ? IconRes.visiBalOffIcon
                    : IconRes.visiBalIcon,
                color: ColorRes.whiteColor,
              )),
          hintTextString: StringRes.createNewPassword,
          width: w * 0.893,
          height: h * 0.067,
          obscureText: controller.forGetNewVisiBal ? true : false,
        );
      });
}

Widget confirmButton() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<ForGetController>(
      id: 'Confirm',
      builder: (controller) {
        return commonBottomLoginORSignUpButton(
            leftPadding: w * 0.32,
            rightPadding: w * 0.32,
            topPadding: h * 0.02,
            bottomPadding: h * 0.02,
            onPressed: controller.confirmButton,
            buttonText: StringRes.confirmPassWordString);
      });
}


