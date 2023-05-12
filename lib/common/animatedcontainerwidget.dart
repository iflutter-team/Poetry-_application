import 'package:flutter/material.dart';

import '../utils/color_res.dart';

Widget commonDot({
  int? index,
  int? pageIndex,
}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 190),
    height: 8,
    width: index == pageIndex ? 20 : 8,
    margin: const EdgeInsets.only(left: 2.5, right: 2.5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: index == pageIndex
            ? ColorRes.animatedContainerExpandColor
            : ColorRes.animatedContainerColor.withOpacity(0.5)),
  );
}