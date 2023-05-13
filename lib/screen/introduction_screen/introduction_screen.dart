import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/screen/introduction_screen/introduction_screen_controller.dart';

import '../../utils/color_res.dart';
import 'introduction_screen_widget.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(IntroductionScreenController());
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
            sizedBoxWidget(
              height: h * 0.080,
            ),
            introduction(),
            sizedBoxWidget(
              height: h * 0.010,
            ),
            textWidget(),
            sizedBoxWidget(
              height: h * 0.060,
            ),
            getButton(),
          ],
        ),
      ),
    );
  }
}
