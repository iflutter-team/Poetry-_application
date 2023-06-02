import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_container.dart';
import 'package:poetry/common/common_icon.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/icon_res.dart';

import '../../common/padding_widget.dart';
import '../../common/sizedbox_widget.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import 'notification_screen_controller.dart';

AppBar appBarWidget() {
  double h = Get.height;
  double w = Get.width;
  return AppBar(
    centerTitle: true,
    backgroundColor: ColorRes.whiteColor,
    leadingWidth: w * 0.13,
    leading: GetBuilder<NotificationController>(builder: (controller) {
      return InkWell(
        onTap: () {},
        child: paddingWidget(
            left: w * 0.05,
            bottom: h * 0.0,
            right: w * 0.0,
            top: h * 0.0,
            widget: Image.asset(AssetRes.homeAppBarMenuImg)),
      );
    }),
    title: commonTextWidget(
        text: StringRes.homePageAppbar,
        color: ColorRes.greenColor,
        fontSize: 20,
        fontWeight: FontWeight.bold),
    actions: [
      commonIcon(icon: IconRes.favoriteIcon,color: ColorRes.greenColor),
      sizedBoxWidget(height: h * 0.10, width: w * 0.03),
    ],
  );
}

Widget notificationWidget(BuildContext context) {
  double h = MediaQuery.of(context).size.height;
  return Image.asset(
    AssetRes.notificationImage,
    height: h * 0.25,
    width: double.infinity,
  );
}

Widget containerWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<NotificationController>(builder: (controller) {
    return SizedBox(
      width: w * 0.40,
      height: h * 0.08,
      child: DottedBorder(
        strokeWidth: 2,
        dashPattern: const [6, 3, 6, 3],
        color: Colors.white,
        borderType: BorderType.RRect,
        radius: const Radius.circular(30),
        child: commonContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: commonTextWidget(
                text: 'Reresh',
                color: ColorRes.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
      ),
    );
  });
}
