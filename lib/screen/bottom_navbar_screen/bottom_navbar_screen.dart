import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color_res.dart';
import 'bottom_navbar_screen_controller.dart';
import 'bottom_navbar_screen_widget.dart';

class BottomNavBarSrceen extends StatelessWidget {
  const BottomNavBarSrceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavBarController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      body: bottomNavBar(),
    );
  }
}
