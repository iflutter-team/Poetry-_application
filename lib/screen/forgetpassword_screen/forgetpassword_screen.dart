import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/padding_widget.dart';
import 'package:poetry/utils/color_res.dart';

import '../../common/poetry_image.dart';
import '../../common/sizedbox_widget.dart';
import '../../common/text_widget.dart';
import '../../utils/string_res.dart';
import 'forgetpassword_screen_controller.dart';
import 'forgetpassword_screen_widget.dart';

class ForGetPassWord extends StatefulWidget {
  const ForGetPassWord({Key? key}) : super(key: key);

  @override
  State<ForGetPassWord> createState() => _ForGetPassWordState();
}

class _ForGetPassWordState extends State<ForGetPassWord> {
  @override
  Widget build(BuildContext context) {
    Get.put(ForGetController());
    double h = Get.height;
    double w = Get.width;
    return Scaffold(
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
                  children: [forGetScreenArrow()],
                ),
                sizedBoxWidget(
                  height: h * 0.0304,
                ),
                poetryPageImage(height: h * 0.260),
                sizedBoxWidget(
                  height: h * 0.0304,
                ),
                commonTextWidget(
                    text: StringRes.forgetPassString,
                    fontSize: 18,
                    color: Colors.white),
                sizedBoxWidget(
                  height: h * 0.0299,
                ),
                forGetEmailTextFieldWidget(),
                sizedBoxWidget(height: h * 0.0299),
                forgetPassTextFieldWidget(),
                sizedBoxWidget(
                  height: h * 0.0299,
                ),
                forgetNewPassTextFieldWidget(),
                sizedBoxWidget(
                  height: h * 0.116,
                ),
                confirmButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
