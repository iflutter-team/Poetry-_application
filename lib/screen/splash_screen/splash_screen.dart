import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/splash_screen/splash_screen_controller.dart';
import 'package:poetry/screen/splash_screen/splash_screen_widget.dart';

import '../../utils/color_res.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: splashScreenImage()),
        ],
      ),
    );
  }
}
