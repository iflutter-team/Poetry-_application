import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/splash_screen/splash_screen_widget.dart';

import '../../utils/color_res.dart';
import '../introduction_screen/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3), () => Get.off(const IntroductionScreen()));
  }

  @override
  Widget build(BuildContext context) {
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
