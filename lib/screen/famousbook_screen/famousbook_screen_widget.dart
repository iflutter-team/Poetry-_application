import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_container.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/utils/string_res.dart';

import '../../common/sizedbox_widget.dart';
import '../../utils/color_res.dart';
import 'famousbook_screen_controller.dart';

Widget famousBookListview(
    {double? containerHeight,
    double? containerWidth,
    double? bookHeight,
    double? bookWidth,
    Widget? child,
    ImageProvider? lineImage,
    ImageProvider? favoriteImage,
    ImageProvider? shareImage}) {
  double w = Get.width;
  double h = Get.height;
  return GetBuilder<FamousBookController>(builder: (controller) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: StringRes.famousBookData.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: controller.famousBookCondition,
            child: DottedBorder(
              color: Colors.white,
              borderType: BorderType.RRect,
              dashPattern: const [5, 3],
              radius: const Radius.circular(20),
              child: commonContainer(
                height: containerHeight,
                width: containerWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: child,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: commonContainer(
                            height: bookHeight,
                            width: bookWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  StringRes.famousBookData[index]['image'],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        sizedBoxWidget(
                          width: w * 0.04,
                        ),
                        Image(
                          image: lineImage!,
                          height: h * 0.14,
                        ),
                        sizedBoxWidget(
                          width: w * 0.03,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(0.55),
                                  1: FlexColumnWidth(0.05),
                                },
                                children: [
                                  TableRow(children: [
                                    commonTextWidget(
                                      text: StringRes.book,
                                      fontSize: 13,
                                      color: ColorRes.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: ':',
                                      color: ColorRes.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: StringRes.famousBookData[index]
                                          ['name'],
                                      fontSize: 14,
                                      color: ColorRes.famousBookColor,
                                    ),
                                  ]),
                                  TableRow(children: [
                                    commonTextWidget(
                                      text: StringRes.author,
                                      fontSize: 13,
                                      color: ColorRes.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: ':',
                                      color: ColorRes.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: StringRes.famousBookData[index]
                                          ['authername'],
                                      fontSize: 14,
                                      color: ColorRes.famousBookColor,
                                    ),
                                  ]),
                                  TableRow(children: [
                                    commonTextWidget(
                                        text: StringRes.pubilshed,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    commonTextWidget(
                                      text: ':',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    commonTextWidget(
                                      text: StringRes.famousBookData[index]
                                          ['PubilshedDate'],
                                      fontSize: 14,
                                      color: ColorRes.famousBookColor,
                                    ),
                                  ]),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image(
                              image: favoriteImage!,
                              width: w * 0.06,
                            ),
                          ),
                          sizedBoxWidget(
                            width: Get.width * 0.03,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image(
                              image: shareImage!,
                              width: w * 0.06,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  });
}
