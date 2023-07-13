import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/iconbutton_widget.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/screen/follow_screen/follow_screen_controller.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/string_res.dart';
import '../../utils/color_res.dart';

Widget container() {
  return Column(
    children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(
              top: Get.height * 0.02, bottom: Get.height * 0.02),
          child: const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(AssetRes.pabloNeruda1Image),
          ),
        ),
      ),
      commonTextWidget(
        text: StringRes.pabloNerudaText,
        color: ColorRes.whiteColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      commonTextWidget(
        text: StringRes.followsText,
        color: ColorRes.whiteColor,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      sizedBoxWidget(height: Get.height * 0.02),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: Get.width * 0.290,
            height: Get.height * 0.05,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: ColorRes.whiteColor)),
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {},
                child: commonTextWidget(
                  text: StringRes.followText,
                  color: ColorRes.greenColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.290,
            height: Get.height * 0.05,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: ColorRes.whiteColor)),
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {},
                child: commonTextWidget(
                  text: StringRes.unFollowText,
                  color: ColorRes.greenColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      sizedBoxWidget(height: Get.height * 0.02),
      commonTextWidget(
        text: 'Top Book',
        color: ColorRes.whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ],
  );
}

Widget listviewWidget() {
  return Expanded(
    child: GetBuilder<FollowController>(builder: (controller) {
      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: StringRes.followList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: Get.height * 0.120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorRes.greenColor,
              border: Border.all(color: ColorRes.whiteColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height * 0.09,
                    width: Get.width * 0.21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                          image:
                              AssetImage(StringRes.followList[index]['image']),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(Get.height * 0.01),
                    child: Image.asset(AssetRes.lineImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        commonTextWidget(
                            text: StringRes.followList[index]['title'],
                            color: ColorRes.whiteColor,
                            fontWeight: FontWeight.bold),
                        commonTextWidget(
                            text: StringRes.followList[index]['subtitle'],
                            color: ColorRes.whiteColor,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    StringRes.followList[index]['downloadImg'],
                    height: Get.height * 0.05,
                    width: Get.width * 0.05,
                  ),
                  commonIconButton(
                    onPressed: () {},
                    icon: Icon(
                      StringRes.followList[index]['icon'],
                      color: ColorRes.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }),
  );
}

Widget silverAppbarWidget() {
  return   SliverAppBar(
    expandedHeight: Get.height * 0.100,
    flexibleSpace: FlexibleSpaceBar(
      background: Image.asset(AssetRes.pabloNeruda1Image),
    ),

  );
}
