import 'package:flutter/material.dart';
import '../../common/common_container.dart';
import '../../common/text_widget.dart';
import '../../utils/color_res.dart';

Widget viewContainer(BuildContext context,
    {required String title, required ImageProvider assetImage}) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  return Stack(clipBehavior: Clip.none, children: [
    commonContainer(
      height: h * 0.380,
      width: w * 0.700,
     // clipBehavior: Clip.none,
      decoration: BoxDecoration(
          color: ColorRes.whiteColor,
          borderRadius: BorderRadius.circular(125),
          image: DecorationImage(image: (assetImage), fit: BoxFit.cover)),
    ),
    Positioned(
      right: w * 0.0 - 30,
      left: w * 0.0 - 30,
      top: h * 0.28,
      child: commonContainer(
          height: h * 0.07,
          width: w * 0.900,
          //clipBehavior: Clip.none,
          decoration: BoxDecoration(
              color: ColorRes.whiteColor,
              borderRadius: BorderRadius.circular(35)),
          child: Center(
            child: commonTextWidget(
              text: title,
              color: ColorRes.greenColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )),
    )
  ]);
}
