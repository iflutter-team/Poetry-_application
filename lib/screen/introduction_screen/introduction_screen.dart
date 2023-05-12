import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/introduction_screen/introduction_screen_controller.dart';
import 'package:poetry/screen/login_screen/login_screen.dart';

import '../../common/animatedcontainerwidget.dart';
import '../../common/textwidget.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import 'introduction_screen_widget.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {

  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      body: Padding(
        padding:
            EdgeInsets.only(top: h * 0.050, left: w * 0.05, right: w * 0.05),
        child: Column(
          children: [
            row(),
            heightOfSizeBox(
              h * 0.080,
            ),
            containerOfPageView(
                height: h * 0.510,
                widget: pageViewOfIntroductionScreen(
                    onPageChanged:
                    heightOfImage: h * 0.270)),
            SizedBox(
              height: h * 0.010,
            ),
            commonTextWidget(
                text: StringRes.introductionPageBottomText,
                color: Colors.white,
                fontsize: 15,
                textAlign: TextAlign.center),
            SizedBox(
              height: h * 0.060,
            ),
            GetBuilder<IntroductionScreenController>(
              builder: (controller) {
                return introductionPageBottomButton(
                  onTapDuration: controller.introductionPageBottomButton(),
                  text: pageIndex == 2 ? 'Get Started' : 'Next',
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
