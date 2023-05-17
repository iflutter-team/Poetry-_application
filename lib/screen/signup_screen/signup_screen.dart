import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/padding_widget.dart';
import 'package:poetry/screen/signup_screen/signup_screen_controller.dart';
import 'package:poetry/screen/signup_screen/signup_screen_widget.dart';
import 'package:poetry/utils/color_res.dart';

import '../../common/poetry_image.dart';
import '../../common/sizedbox_widget.dart';
import '../../common/text_widget.dart';
import '../../utils/string_res.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double h=Get.height;
  double w=Get.width;
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return  Scaffold(
      backgroundColor: ColorRes.greenColor,
      body: paddingWidget(
        left: w * 0.015,
        right: w * 0.015,
        top: h * 0.050,
        bottom: h*0.0,
        widget: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  children: [signScreenArrow()],
                ),
                sizedBoxWidget(
                  height: h * 0.0304,
                ),
                poetryPageImage(height: h * 0.260),
                sizedBoxWidget(
                  height: h * 0.0304,
                ),
                commonTextWidget(
                    text: StringRes.signUpString,
                    fontSize: 18,
                    color: Colors.white),
                sizedBoxWidget(
                  height: h * 0.0299,
                ),
                fullNameTextFieldWidget(),
                sizedBoxWidget(height: h * 0.0299),
                signUpEmailTextFieldWidget(),
                sizedBoxWidget(
                  height: h * 0.0299,
                ),
                signUpPassTextFieldWidget(),
                termsConditions(context),
                sizedBoxWidget(
                  height: h *  0.033,
                ),
                signupButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
