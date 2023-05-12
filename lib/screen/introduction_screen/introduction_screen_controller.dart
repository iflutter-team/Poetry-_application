import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_screen/login_screen.dart';

class IntroductionScreenController extends GetxController {
  int pageIndex = 0;
  PageController pageController = PageController();

  void introductionPageBottomButton() {
    if (pageIndex != 2) {
      pageController.nextPage(
          duration: const Duration(seconds: 1), curve: Curves.ease);
    } else {
      Get.to(const LoginScreen());
    }
  }

  void pageViewOfIntroductionScreen(){
        (int value) {
          pageIndex = value;
          update()

    };
  }
}
