import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../common/login_signup_button.dart';
import '../../../common/sizedbox_widget.dart';
import '../../../common/textField_widget.dart';
import '../../../common/text_widget.dart';
import '../../../utils/color_res.dart';
import '../../../utils/string_res.dart';
import 'emailorphone_screen_controller.dart';


Widget emailORPhoneTextFieldOrOTP() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<EmailOrPhoneController>(
      id: 'emailORPhoneTextFieldOrOTP',
      builder: (controller) {
        if (controller.emailOrPhoneToOTP==true) {
          return  const Pinput(length: 6,);
        } else {
          return Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonTextField(
              // controller: controller.email,
              // validator: controller.emailCondition,
              hintTextString: StringRes.emailForgetString,
              width: w * 0.893,
              height: h * 0.067,
              obscureText: false,
            ),
            sizedBoxWidget(
              height: Get.height*0.01,
            ),
            controller.emailForgetError != null
                ? commonTextWidget(
                text: controller.emailForgetError ?? "",
                color: ColorRes.errorColor)
                : sizedBoxWidget(),
          ],
        );
        }
      });
}

Widget getOTPButton() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<EmailOrPhoneController>(
      id: 'EmailOrPhoneController',
      builder: (controller) {
        return commonBottomLoginORSignUpButton(
            leftPadding: w * 0.32,
            rightPadding: w * 0.32,
            topPadding: h * 0.02,
            bottomPadding: h * 0.02,
            // onPressed: () {
            //   if (controller.loginKey.currentState!.validate()) {
            //     termsAndConditionDialog(acceptOnPressed: () {
            //       Get.offAll(const BottomNavBarSrceen());
            //     });
            //   } else {
            //     Get.snackbar('Login Failed', 'Fill The Information',
            //         backgroundColor: Colors.white30);
            //   }
            // },
            onPressed:()=> controller.getOTPButton(),
            buttonText: StringRes.getOTP);
      });
}

