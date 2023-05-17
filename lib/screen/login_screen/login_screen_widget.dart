import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/back_arrow_widget.dart';
import 'package:poetry/common/icon_widget.dart';
import 'package:poetry/common/login_signup_button.dart';
import 'package:poetry/common/textfield_widget.dart';
import 'package:poetry/screen/login_screen/login_screen_controller.dart';
import 'package:poetry/utils/color_res.dart';
import '../../common/text_widget.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

Widget arrow() {
  return GetBuilder<LoginController>(
    builder: (controller) {
      return backArrow(onPressed:controller.backArrow);
    }
  );
}


Widget emailTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<LoginController>(
      id: 'email',
      builder: (controller) {
        return commonTextField(
          controller: controller.email,
          validator: controller.emailCondition,
          hintTextString: StringRes.emailString,
          width: w * 0.893,
          height: h * 0.067,
          obscureText: false,
        );
      });
}

Widget passTextFieldWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<LoginController>(
      id: 'password',
      builder: (controller) {
        return commonTextField(
          controller: controller.password,
          validator: controller.passWordCondition,
          suffixIcon: iconWidget(
              onPressed: controller.passSuFix,
              icon: Icon(
                controller.visiBal
                    ? IconRes.visiBalOffIcon
                    : IconRes.visiBalIcon,
                color: ColorRes.whiteColor,
              )),
          hintTextString: StringRes.passWordString,
          width: w * 0.893,
          height: h * 0.067,
          obscureText: controller.visiBal ? true : false,
        );
      });
}

Widget forgetPassWordButton() {
  return GetBuilder<LoginController>(builder: (controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: controller.forGetPage,
            child: commonTextWidget(
                text: "${StringRes.forgetPassString} ?",
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      ],
    );
  });
}

Widget loginButton() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<LoginController>(
      id: 'login',
      builder: (controller) {
        return commonBottomLoginORSignUpButton(
            leftPadding: w * 0.32,
            rightPadding: w * 0.32,
            topPadding: h * 0.02,
            bottomPadding: h * 0.02,
            onPressed: controller.loginButton,
            buttonText: StringRes.loginString);
      });
}

Widget account() {
  return GetBuilder<LoginController>(builder: (controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        commonTextWidget(
            text: StringRes.doNotHaveAccountText,
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400),
        TextButton(
            onPressed: controller.account,
            child: commonTextWidget(
                text: StringRes.signUpString,
                color: Colors.white54,
                fontSize: 15,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w400)),
      ],
    );
  });
}
