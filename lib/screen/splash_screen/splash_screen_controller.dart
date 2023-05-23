import 'dart:async';

import 'package:get/get.dart';

import '../introduction_screen/introduction_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    Timer(
        const Duration(seconds: 3), () => Get.off(const IntroductionScreen()));
  }
}
