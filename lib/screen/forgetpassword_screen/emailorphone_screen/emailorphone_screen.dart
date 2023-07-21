import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/poetry_image.dart';
import '../../../common/sizedbox_widget.dart';
import '../../../common/text_widget.dart';
import '../../../utils/color_res.dart';
import '../../../utils/string_res.dart';
import 'emailorphone_screen_controller.dart';
import 'emailorphone_screen_widget.dart';

class EmailOrPhone extends StatelessWidget {
  const EmailOrPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EmailOrPhoneController());
    double h = Get.height;
    double w = Get.width;
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sizedBoxWidget(
                height: h * 0.0304,
              ),
              poetryPageImage(height: h * 0.260),
              sizedBoxWidget(
                height: h * 0.04,
              ),
              commonTextWidget(
                  text: StringRes.forgetHeaderString,
                  fontSize: 18,
                  color: Colors.white),
              sizedBoxWidget(
                height: h * 0.05,
              ),
              emailORPhoneTextFieldOrOTP(),
              sizedBoxWidget(
                height: h * 0.07,
              ),
              getOTPButton(),
              sizedBoxWidget(
                height: h * 0.10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
