import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/padding_widget.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/screen/login_screen/login_screen_controller.dart';
import 'package:poetry/screen/login_screen/login_screen_widget.dart';
import 'package:poetry/utils/color_res.dart';

import '../../common/poetry_image.dart';
import '../../utils/string_res.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  double h = Get.height;

  double w = Get.width;

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        key: controller.scaffoldKey,
        backgroundColor: ColorRes.greenColor,
        body: paddingWidget(
          left: w * 0.015,
          right: w * 0.015,
          top: h * 0.050,
          bottom: h * 0.0,
          widget: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
              alignment: Alignment.center,
              child: Form(
                key: controller.loginKey,
                child: Column(
                  children: [
                    Row(
                      children: [arrow()],
                    ),
                    sizedBoxWidget(
                      height: h * 0.0304,
                    ),
                    poetryPageImage(height: h * 0.260),
                    sizedBoxWidget(
                      height: h * 0.0304,
                    ),
                    commonTextWidget(
                        text: StringRes.loginString,
                        fontSize: 18,
                        color: Colors.white),
                    sizedBoxWidget(
                      height: h * 0.0299,
                    ),
                    emailTextFieldWidget(),
                    sizedBoxWidget(
                      height: h * 0.0299,
                    ),
                    passTextFieldWidget(),
                    forgetPassWordButton(),
                    sizedBoxWidget(
                      height: h * 0.116,
                    ),
                    loginButton(),
                    sizedBoxWidget(
                      height: h * 0.020,
                    ),
                    account(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
