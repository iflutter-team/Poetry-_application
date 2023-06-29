import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_screen/login_screen.dart';

class IntroductionScreenController extends GetxController {
  int pageIndex = 0;
  int index = 0;
  PageController pageController = PageController();

  void introductionPageBottomButton() {
    update(['container']);
    if (pageIndex != 2) {
      pageController.nextPage(
          duration: const Duration(seconds: 1), curve: Curves.ease);
    } else {
      Get.to(LoginScreen());
    }
  }

  void pageViewOfIntroductionScreen(int value){
    update(['pageView','indicator','container']);
    pageIndex = value;

  }
}
