import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/home_screen/home_screen_controller.dart';

import '../utils/color_res.dart';

HomeScreenController homeScreenController =Get.find<HomeScreenController>();

Widget commonDot({
  int? index,
  int? pageIndex,
  Color? color,
}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 190),
    height: 8,
    width: index == pageIndex ? 20 : 8,
    margin: const EdgeInsets.only(left: 2.5, right: 2.5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color:color,
        // index == pageIndex
        //     ? ColorRes.animatedContainerExpandColor
        //     : ColorRes.animatedContainerColor.withOpacity(0.5)
    ),
  );
}