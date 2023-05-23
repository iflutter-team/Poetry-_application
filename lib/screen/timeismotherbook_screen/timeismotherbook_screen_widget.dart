import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_container.dart';
import 'package:poetry/common/padding_widget.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/utils/asset_res.dart';
import '../../common/text_widget.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import 'timeismotherbook_screen_controller.dart';

Widget containerWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<TimeIsMotherController>(builder: (controller) {
    return paddingWidget(
      bottom: h*0.0,
      left: w*0.05,
      right: w*0.05,
      top: h*0.05,
      widget: commonContainer(
        alignment: Alignment.center,
        height: h * 0.700,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(45),
        ),
        child: paddingWidget(
          bottom: h * 0.0,
          right: w * 0.0,
          top: h * 0.03,
          left: w * 0.10,
          widget: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  commonContainer(
                    height: h * 0.170,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(AssetRes.timeIsMotherImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  sizedBoxWidget(
                    width: w * 0.03,
                  ),
                  paddingWidget(
                    bottom:h*0.00 ,
                    left: w*0.03,
                    right:w*0.04 ,
                    top:h*0.01 ,
                    widget: Image.asset(
                      AssetRes.lineImage,
                      height: h * 0.15,
                      color: ColorRes.timeIsMotherBookColor,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(0.55),
                                  1: FlexColumnWidth(0.05),
                                },
                                children:  [
                                  TableRow(children: [
                                    commonTextWidget(
                                      text: StringRes.book,
                                      fontSize: 13,
                                      color: ColorRes.greenColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: ':',
                                      color: ColorRes.greenColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: StringRes.timeIsMother,
                                      fontSize: 14,
                                      color: ColorRes.greenColor,
                                    ),
                                  ]),
                                  TableRow(children: [
                                    commonTextWidget(
                                      text: StringRes.author,
                                      fontSize: 13,
                                      color: ColorRes.greenColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: ':',
                                      color: ColorRes.greenColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: StringRes.authorString,
                                      color: ColorRes.greenColor,
                                      fontSize: 14,
                                    ),
                                  ]),
                                  TableRow(children: [
                                    commonTextWidget(
                                      text: StringRes.pubilshed,
                                      fontSize: 12,
                                      color: ColorRes.greenColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: ':',
                                      color: ColorRes.greenColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: StringRes.pubilshedString,
                                      color: ColorRes.greenColor,
                                      fontSize: 14,
                                    ),
                                  ]),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
               sizedBoxWidget(
                height: h*0.04,
              ),
              commonContainer(
                alignment: Alignment.center,
                height: h*0.04,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    AssetRes.line4Image,
                  ),
                )),
                child:  commonTextWidget(
                  text: StringRes.timeIsMother,
                  color: ColorRes.timeIsMotherBookColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              paddingWidget(
               top: h*0.03,
                right:w*0.0 ,
                left:w*0.0 ,
                bottom: h*0.0,
                widget: Container(
                    alignment: Alignment.center,
                    height: h*0.350,
                    child: Image.asset(
                      AssetRes.poemImage,
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  },
  );
}

Widget bottomNavigationBarWidget(){
  double h=Get.height;
  double w=Get.width;
  return GetBuilder<TimeIsMotherController>(
    builder: (controller) {
      return commonContainer(
        height: h*0.09,
        decoration: const BoxDecoration(
          color: ColorRes.whiteColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AssetRes.share2Image,
                width: 25,
          ),
            Image.asset(AssetRes.editImage, width: 25),
            Image.asset(AssetRes.textImage, width: 25),
            Image.asset(AssetRes.copyImage, width: 25),
            Image.asset(AssetRes.pasteImage, width: 25),
          ],
        ),
      );
    }
  );
}