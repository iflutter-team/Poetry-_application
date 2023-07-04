import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/sizedbox_widget.dart';

import '../../common/back_arrow_widget.dart';
import '../../common/iconbutton_widget.dart';
import '../../common/login_signup_button.dart';
import '../../common/textField_widget.dart';
import '../../common/text_widget.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'signup_screen_controller.dart';

Widget signScreenArrow() {
  return GetBuilder<SignUpController>(builder: (controller) {
    return backArrow(onPressed: () => Get.back());
  });
}

Widget fullNameTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<SignUpController>(
      id: 'validation',
      builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonTextField(
              controller: controller.fullName,
              //validator: controller.fullNameCondition,
              hintTextString: StringRes.fullNameString,
              width: w * 0.893,
              height: h * 0.067,
              obscureText: false,
            ),
            sizedBoxWidget(
              height: Get.height*0.01,
            ),
            controller.fullError != null
                ? commonTextWidget(
                text: controller.fullError ?? "",
                color: ColorRes.errorColor)
                : sizedBoxWidget(),
          ],
        );
      });
}

Widget userNameTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<SignUpController>(
      id: 'validation',
      builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonTextField(
              controller: controller.username,
              //validator: controller.userNameCondition,
              hintTextString: StringRes.usernameString,
              width: w * 0.893,
              height: h * 0.067,
              obscureText: false,
            ),
            sizedBoxWidget(
              height: Get.height*0.01,
            ),
            controller.userError != null
                ? commonTextWidget(
                text: controller.userError ?? "",
                color: ColorRes.errorColor)
                : sizedBoxWidget(),
          ],
        );
      });
}

Widget signUpEmailTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<SignUpController>(
      id: 'validation',
      builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonTextField(
              controller: controller.signupEmail,
              hintTextString: StringRes.emailString,
              width: w * 0.893,
              height: h * 0.067,
              obscureText: false,
              // onChanged: controller.signup,
            ),
            sizedBoxWidget(
              height: Get.height*0.01,
            ),
            controller.emailError != null
                ? commonTextWidget(
                    text: controller.emailError ?? "",
                    color: ColorRes.errorColor)
                : sizedBoxWidget(),
          ],
        );
      });
}

Widget signUpPassTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<SignUpController>(
    id: 'validation',
    builder: (controller) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commonTextField(
            controller: controller.signupPassword,
            //validator: controller.signupPassWordCondition,
            suffixIcon: iconWidget(
                onPressed: controller.forGetPassSuFix,
                icon: Icon(
                  controller.signupVisiBal
                      ? IconRes.visiBalOffIcon
                      : IconRes.visiBalIcon,
                  color: ColorRes.whiteColor,
                )),
            hintTextString: StringRes.passWordString,
            width: w * 0.893,
            height: h * 0.067,
            obscureText: controller.signupVisiBal ? true : false,
          ),
          sizedBoxWidget(
            height: Get.height*0.01,
          ),
          controller.passError != null
              ? commonTextWidget(
              text: controller.passError ?? "",
              color: ColorRes.errorColor)
              : sizedBoxWidget(),
        ],
      );
    },
  );
}

Widget chkBox(
    {required bool? value,
    required void Function(bool?)? onChanged,
    Color? checkColor,
    Color? activeColor,
    BorderSide? side}) {
  return Checkbox(
      checkColor: checkColor,
      activeColor: activeColor,
      side: side,
      value: value,
      onChanged: onChanged);
}

Widget termsConditions(BuildContext context) {
  double h = Get.height;
  double w = Get.width;
  return Row(children: [
    sizedBoxWidget(width: w * 0.0433, height: h * 0.0433),
    GetBuilder<SignUpController>(
        id: 'checked',
        builder: (controller) {
          return chkBox(
            checkColor: const Color(0xff0F3E1A),
            activeColor: Colors.white,
            side: const BorderSide(color: Colors.white),
            value: controller.termsConditionsAgreedCheckbox,
            onChanged: controller.termsAndCondition,
          );
        }),
    commonTextWidget(text: StringRes.agreedString, color: Colors.white),
    GetBuilder<SignUpController>(
        id: 'chkBoxCondition',
        builder: (controller) {
          return TextButton(
              onPressed: controller.chkBoxCondition,
              child: commonTextWidget(
                  text: StringRes.termsAndConditionString,
                  color: Colors.white60));
        }),
  ]);
}

Widget signupButton() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<SignUpController>(
      id: 'signupButton',
      builder: (controller) {
        return commonBottomLoginORSignUpButton(
            leftPadding: w * 0.32,
            rightPadding: w * 0.32,
            topPadding: h * 0.02,
            bottomPadding: h * 0.02,
            onPressed: controller.signupButton,
            buttonText: StringRes.signUpString);
      });
}
