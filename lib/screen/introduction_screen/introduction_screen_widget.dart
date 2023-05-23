import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/animatedcontainerwidget.dart';
import 'package:poetry/common/sizedbox_widget.dart';

import '../../common/common_container.dart';
import '../../common/text_widget.dart';
import '../../utils/string_res.dart';
import '../login_screen/login_screen.dart';
import 'introduction_screen_controller.dart';


Widget containerOfPageView({double? height, Widget? widget}) {
  return SizedBox(
    height: height,
    child: widget!,
  );
}

List<Map> data = [
  {
    'image': 'assets/image/rafiki.png',
    'title': 'Read and Listen Poetry',
  },
  {
    'image': 'assets/image/rafiki1.png',
    'title': 'Write and Recode Poetry',
  },
  {
    'image': 'assets/image/paNa.png',
    'title': 'Writing and Voice Upload',
  },
];


Widget pageViewOfIntroductionScreen(
    {required void Function(int index) onPageChanged,
      required double heightOfImage}) {
  return GetBuilder<IntroductionScreenController>(
      builder: (controller) {
        return PageView.builder(
          physics: const BouncingScrollPhysics(),
          onPageChanged: onPageChanged,
          controller: controller.pageController,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                sizedBoxWidget(
                    height: heightOfImage, child: Image.asset(data[index]['image'])),
                sizedBoxWidget(
                  height: Get.height * 0.0837,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  child: Text(
                    data[index]['title'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          },
        );
      }
  );
}

Widget introductionPageBottomButton(
    {required void Function() onTapDuration, required String text}) {
  return InkWell(
    overlayColor: const MaterialStatePropertyAll(Colors.transparent),
    onTap: onTapDuration,
    child: commonContainer(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      child: commonTextWidget(
        text: text,
            color: const Color(0xff0F3E1A),
            fontSize: 18,
            fontWeight: FontWeight.w800,
      ),
    ),
  );
}

Widget row(){
  double h=Get.height;
  double w=Get.width;
  return  GetBuilder<IntroductionScreenController>(
      id: "indicator",
      builder: (controller) {
        return Row(
          children: [
            sizedBoxWidget(
              height: h * 0.05,
              width: w * 0.15,
              child: GetBuilder<IntroductionScreenController>(
                  builder: (controller) {
                    return Row(
                      children: [
                        commonDot(
                          index: 0,
                          pageIndex: controller.pageIndex,
                        ),
                        commonDot(
                          index: 1,
                          pageIndex: controller.pageIndex,
                        ),
                        commonDot(
                          index: 2,
                          pageIndex: controller.pageIndex,
                        ),
                      ],
                    );
                  }
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Get.to(LoginScreen());
              },
              child: commonTextWidget(
                  text: StringRes.introductionPageSkipButton,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ],
        );
      }
  );
}

Widget introduction(){
  double h = Get.height;
  return GetBuilder<IntroductionScreenController>(
      id: 'pageView',
      builder: (controller) {
        return containerOfPageView(
            height: h * 0.510,
            widget: pageViewOfIntroductionScreen(
                onPageChanged: controller.pageViewOfIntroductionScreen,
                heightOfImage: h * 0.270));
      });
}

Widget textWidget(){
  return  commonTextWidget(
      text: StringRes.introductionPageBottomText,
      color: Colors.white,
      fontSize: 15,
      textAlign: TextAlign.center);
}

Widget getButton(){
  return GetBuilder<IntroductionScreenController>(
      id: 'container',
      builder: (controller) {
        return introductionPageBottomButton(
          onTapDuration: controller.introductionPageBottomButton,
          text: controller.pageIndex == 2 ? 'Get Started' : 'Next',
        );
      });
}