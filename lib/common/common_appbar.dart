import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';

import '../utils/color_res.dart';
import 'common_icon.dart';

PreferredSizeWidget commonAppbar(BuildContext context,
    {Color? backgroundColor,
      required void Function()? onTap,
    IconData? icon,
    Color? color,
    required String title,
    IconData? leadingIcon,
    required IconData? actionIcon,
    void Function()? onTapBack,
    }) {
  double w = Get.width;
  return AppBar(
    backgroundColor: backgroundColor,
    leading: InkWell(
        onTap:onTapBack,
        child: commonIcon(
          color: ColorRes.greenColor,
          icon: leadingIcon,
        )),
    title: commonTextWidget(
        text: title,
        color: ColorRes.greenColor,
        fontWeight: FontWeight.bold,
        fontSize: 23),
    centerTitle: true,
    actions: [
      InkWell(
        onTap:onTap,
        child: commonIcon(color: ColorRes.greenColor, icon: actionIcon),
      ),
      sizedBoxWidget(width: w * 0.02),
    ],
  );
}
