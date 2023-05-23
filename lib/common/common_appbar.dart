import 'package:flutter/material.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';

import '../utils/color_res.dart';
import 'common_icon.dart';

PreferredSizeWidget commonAppbar(BuildContext context,
    {Color? backgroundColor,
      IconData? icon,
      Color? color,
      required String title,
      required IconData? leadingIcon,
      required IconData? actionIcon}) {
  double w = MediaQuery.of(context).size.width;
  return AppBar(
   // flexibleSpace: Container(width: w*0.1173,color: ColorRes.greenColor,child: ,),
    backgroundColor: backgroundColor,
    leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: commonIcon(
            color: ColorRes.greenColor, icon: leadingIcon)),
    title: commonTextWidget(
        text: title,
        color: ColorRes.greenColor,
        fontWeight: FontWeight.bold,
        fontSize: 23),
    centerTitle: true,
    actions: [
      InkWell(
          onTap: () {},
          child: commonIcon(
              color: ColorRes.greenColor, icon: actionIcon)),
      sizedBoxWidget(width: w * 0.02)
    ],
  );
}
