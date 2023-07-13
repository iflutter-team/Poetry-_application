import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_container.dart';
import 'package:poetry/common/common_row.dart';
import 'package:poetry/common/padding_widget.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/utils/icon_res.dart';

import '../../common/animatedcontainerwidget.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../introduction_screen/introduction_screen_widget.dart';
import 'home_screen_controller.dart';

double h = Get.height;
double w = Get.width;

AppBar appBarWidget() {
  return AppBar(
    centerTitle: true,
    backgroundColor: ColorRes.whiteColor,
    leadingWidth: w * 0.13,
    leading: GetBuilder<HomeScreenController>(
        id: 'animatedContainer',
        builder: (controller) {
          return InkWell(
            onTap: controller.shutter,
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
        fontSize: h * 0.024,
        fontWeight: FontWeight.bold),
    actions: [
      //   Image.asset(
      //     AssetRes.homeAppBarEnglishImg,
      //     width: w * 0.09,
      //   ),
      //   SizedBox(
      //     width: w * 0.01,
      //   ),
      const Icon(
        IconRes.favoriteIcon,
        color: ColorRes.greenColor,
      ),
      sizedBoxWidget(width: Get.width * 0.05)
    ],
  );
}

Widget carouselSliderWidget() {
  return GetBuilder<HomeScreenController>(builder: (controller) {
    return CarouselSlider(
        items: List.generate(data.length,
            (index) => Image.asset(controller.carouselSliderdList[index])),
        options: CarouselOptions(
            onPageChanged: controller.carouselSliderCondition,
            height: h * 0.250,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 0.8));
  });
}

Widget pageView() {
  return GetBuilder<HomeScreenController>(
      id: 'PageView',
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            commonDot(
                index: controller.index = 0,
                pageIndex: controller.pageIndex,
                color: controller.index == controller.pageIndex
                    ? ColorRes.whiteColor
                    : ColorRes.animatedContainerExpandColor.withOpacity(0.5)),
            commonDot(
                index: controller.index = 1,
                pageIndex: controller.pageIndex,
                color: controller.index == controller.pageIndex
                    ? ColorRes.whiteColor
                    : ColorRes.animatedContainerExpandColor.withOpacity(0.5)),
            commonDot(
                index: controller.index = 2,
                pageIndex: controller.pageIndex,
                color: controller.index == controller.pageIndex
                    ? ColorRes.whiteColor
                    : ColorRes.animatedContainerExpandColor.withOpacity(0.5)),
          ],
        );
      });
}

Widget popularCategoriesRow() {
  return GetBuilder<HomeScreenController>(builder: (controller) {
    return commonRow(
        text: StringRes.popularCategories,
        onPressed: () {},
        onPressedView: controller.viewAllCondition);
  });
}

Widget popularCategoriesList(BuildContext context) {
  return GetBuilder<HomeScreenController>(builder: (controller) {
    return sizedBoxWidget(
      height: h * 0.730,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              childAspectRatio: 0.60),
          itemCount: StringRes.gridViewTextList.length,
          itemBuilder: (context, index) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: commonContainer(
                  height: h * 0.320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: ColorRes.whiteColor,
                    image: DecorationImage(
                        image: AssetImage(
                            StringRes.gridViewTextList[index]['image']),
                        fit: BoxFit.cover),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80)),
                    child: paddingWidget(
                      left: w * 0.0,
                      right: w * 0.0,
                      top: h * 0.25,
                      bottom: h * 0.0,
                      widget: commonContainer(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                              bottomRight: Radius.circular(80)),
                          color: ColorRes.gridViewColor,
                        ),
                        child: commonTextWidget(
                            text: StringRes.gridViewTextList[index]["title"],
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: ColorRes.greenColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}

Widget topPoetsRow() {
  return GetBuilder<HomeScreenController>(builder: (controller) {
    return commonRow(
        text: StringRes.topPoets, onPressed: () {}, onPressedView: () {});
  });
}

Widget topPoetsList(BuildContext context) {
  return sizedBoxWidget(
    height: h * 0.2339,
    width: w * 0.9926,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: h * 0.40,
              width: w * 0.50,
              decoration: BoxDecoration(
                color: ColorRes.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    AssetRes.topPoetsImage,
                    height: h * 0.400,
                    width: w * 0.400,
                    alignment: Alignment.topCenter,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Image.asset(
                      StringRes.topPoetsList[index]['image'],
                      height: h * 0.11,
                      width: w * 0.41,
                      fit: BoxFit.cover,
                    ),
                  ),
                  paddingWidget(
                    top: h * 0.18,
                    right: w * 0.0,
                    bottom: h * 0.0,
                    left: w * 0.0,
                    widget: commonTextWidget(
                        text: StringRes.topPoetsList[index]['title'],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget famousBookRow() {
  return GetBuilder<HomeScreenController>(builder: (controller) {
    return commonRow(
      text: StringRes.famousBook,
      onPressed: controller.famousBookCondition,
      onPressedView: () {},
    );
  });
}

Widget famousBookList(BuildContext context) {
  return GetBuilder<HomeScreenController>(builder: (controller) {
    return sizedBoxWidget(
      height: h * 0.730,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              childAspectRatio: 0.60),
          itemCount: StringRes.famousBookList.length,
          itemBuilder: (context, index) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: h * 0.320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: ColorRes.whiteColor,
                    image: DecorationImage(
                        image: AssetImage(
                            StringRes.famousBookList[index]['image']),
                        fit: BoxFit.cover),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80)),
                    child: paddingWidget(
                      left: w * 0.0,
                      right: w * 0.0,
                      top: h * 0.25,
                      bottom: h * 0.0,
                      widget: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                              bottomRight: Radius.circular(80)),
                          color: ColorRes.gridViewColor,
                        ),
                        child: commonTextWidget(
                            text: StringRes.famousBookList[index]["title"],
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: ColorRes.greenColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}

Widget autherYouMostLikeRow() {
  return GetBuilder<HomeScreenController>(builder: (controller) {
    return commonRow(
      text: StringRes.autherList,
      onPressed: controller.famousBookCondition,
      onPressedView: controller.onPressedViewOfAutherScreen,
    );
  });
}

Widget containerCondition() {
  return GetBuilder<HomeScreenController>(
      id: "animatedContainer",
      builder: (controller) {
        return GestureDetector(
          onTap: controller.gestureDetectorCondition,
          child: controller.selected
              ? Container(
                  color: const Color(0xff0F3E1A).withOpacity(0.8),
                  height: double.infinity,
                  width: double.infinity,
                )
              : const SizedBox(),
        );
      });
}

Widget animatedContainer(BuildContext context) {
  return GetBuilder<HomeScreenController>(
      id: 'animatedContainer',
      builder: (controller) {
        return AnimatedPositioned(
          top: controller.selected ? 0 : -400,
          left: Get.width * 0.05,
          duration: const Duration(milliseconds: 200),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: Get.width * 0.90,
                height: 180,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white24.withOpacity(0.2),
                        Colors.white12.withOpacity(0)
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Row(
                    //   children: [
                    //     // Container(
                    //     //   height: 50,
                    //     //   width: 50,
                    //     //   decoration: BoxDecoration(
                    //     //     color: Colors.transparent,
                    //     //     borderRadius: BorderRadius.circular(10),
                    //     //     border: Border.all(color: Colors.white),
                    //     //   ),
                    //     //   child: const Icon(
                    //     //     IconRes.notificationIcon,
                    //     //     color: Colors.white,
                    //     //     size: 30,
                    //     //   ),
                    //     // ),
                    //     // sizedBoxWidget(
                    //     //   width: w * 0.020,
                    //     // ),
                    //     // commonTextWidget(
                    //     //     text: 'notification',
                    //     //     color: Colors.white,
                    //     //     fontSize: 19,
                    //     //     fontWeight: FontWeight.bold),
                    //     // const Spacer(),
                    //     // Switch(
                    //     //   value: controller.containerSwitch,
                    //     //   onChanged: controller.animatedContainerCondition,
                    //     //   activeColor: Colors.white,
                    //     // ),
                    //   ],
                    // ),
                    // sizedBoxWidget(
                    //   height: h * 0.02,
                    // ),
                    // Row(
                    //   children: [
                    //     // Container(
                    //     //   height: 50,
                    //     //   width: 50,
                    //     //   decoration: BoxDecoration(
                    //     //     color: Colors.transparent,
                    //     //     borderRadius: BorderRadius.circular(10),
                    //     //     border: Border.all(color: Colors.white),
                    //     //   ),
                    //     //   child: const Icon(
                    //     //     IconRes.favoriteBorderIcon,
                    //     //     color: Colors.white,
                    //     //     size: 30,
                    //     //   ),
                    //     // ),
                    //     // sizedBoxWidget(
                    //     //   width: w * 0.020,
                    //     // ),
                    //     // commonTextWidget(
                    //     //     text: 'Favorites',
                    //     //     color: Colors.white,
                    //     //     fontSize: 19,
                    //     //     fontWeight: FontWeight.bold),
                    //     // const Spacer(),
                    //     // const Icon(
                    //     //   IconRes.arrowIcon,
                    //     //   size: 22,
                    //     //   color: Colors.white,
                    //     // )
                    //   ],
                    // ),
                    // sizedBoxWidget(
                    //   height: h * 0.020,
                    // ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                                    backgroundColor: Colors.transparent,
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, setState) {
                                        return Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.white
                                                        .withOpacity(0.5),
                                                    Colors.white24
                                                        .withOpacity(0.3),
                                                    Colors.white12
                                                        .withOpacity(0)
                                                  ])),
                                          // child: Column(
                                          //   children: [
                                          //     Row(
                                          //       children: [
                                          //         commonTextWidget(
                                          //             text: 'Language',
                                          //             fontSize: 18,
                                          //             color: Colors.white,
                                          //             fontWeight:
                                          //                 FontWeight.bold),
                                          //       ],
                                          //     ),
                                          //     const Divider(
                                          //       thickness: 2,
                                          //       color: Colors.white38,
                                          //     ),
                                          //     GetBuilder<HomeScreenController>(
                                          //       id: 'radiobutton',
                                          //       builder: (controller) {
                                          //         return Row(
                                          //           children: [
                                          //             Image.asset(
                                          //               AssetRes
                                          //                   .homeAppBarEnglishImg,
                                          //               width: 25,
                                          //               color: Colors.white,
                                          //             ),
                                          //             sizedBoxWidget(
                                          //               width: w * 0.15,
                                          //             ),
                                          //             commonTextWidget(
                                          //                 text: 'English',
                                          //                 fontSize: 16,
                                          //                 color: Colors.white,
                                          //                 fontWeight:
                                          //                     FontWeight.bold),
                                          //             const Spacer(),
                                          //             Radio(
                                          //                 value: 'English',
                                          //                 activeColor: ColorRes.whiteColor,
                                          //                  fillColor: MaterialStateColor.resolveWith((states) => ColorRes.whiteColor),
                                          //                 groupValue: controller.gp,
                                          //                 onChanged: controller
                                          //                     .languageCondition)
                                          //           ],
                                          //         );
                                          //       }
                                          //     ),
                                          //     GetBuilder<HomeScreenController>(
                                          //       id: 'radiobutton',
                                          //       builder: (controller) {
                                          //         return Row(
                                          //           children: [
                                          //             Image.asset(
                                          //               AssetRes.homeAppBarHindiImg,
                                          //               width: 25,
                                          //               color: Colors.white,
                                          //             ),
                                          //             sizedBoxWidget(
                                          //               width: w * 0.15,
                                          //             ),
                                          //             commonTextWidget(
                                          //                 text: 'Hindi',
                                          //                 fontSize: 16,
                                          //                 color: Colors.white,
                                          //                 fontWeight:
                                          //                     FontWeight.bold),
                                          //             const Spacer(),
                                          //             Radio(
                                          //                 value: 'Hindi',
                                          //                 fillColor: MaterialStateColor.resolveWith((states) => ColorRes.whiteColor),
                                          //                 groupValue: controller.gp,
                                          //                 activeColor: ColorRes.whiteColor,
                                          //                 onChanged: controller
                                          //                     .languageCondition)
                                          //           ],
                                          //         );
                                          //       }
                                          //     )
                                          //   ],
                                          // ),
                                        );
                                      })
                                    ]));
                      },
                      child: const Row(
                        children: [
                          // Container(
                          //   height: h * 0.06,
                          //   width: w * 0.14,
                          //   decoration: BoxDecoration(
                          //     color: Colors.transparent,
                          //     borderRadius: BorderRadius.circular(10),
                          //     border: Border.all(color: Colors.white),
                          //   ),
                          //   child: const Icon(
                          //     IconRes.translateIcon,
                          //     color: Colors.white,
                          //     size: 30,
                          //   ),
                          // ),
                          // sizedBoxWidget(
                          //   width: w * 0.020,
                          // ),
                          // commonTextWidget(
                          //     text: 'Language',
                          //     color: Colors.white,
                          //     fontSize: 19,
                          //     fontWeight: FontWeight.bold),
                          // const Spacer(),
                          // const Icon(
                          //   IconRes.arrowIcon,
                          //   size: 22,
                          //   color: Colors.white,
                          // )
                        ],
                      ),
                    ),
                    sizedBoxWidget(
                      height: h * 0.010,
                    ),
                    Row(
                      children: [
                        Container(
                          height: h * 0.06,
                          width: w * 0.14,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            IconRes.warningIcon,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        sizedBoxWidget(
                          width: w * 0.020,
                        ),
                        commonTextWidget(
                          text: 'About Us',
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                        const Spacer(),
                        const Icon(
                          IconRes.arrowIcon,
                          size: 22,
                          color: Colors.white,
                        )
                      ],
                    ),
                    sizedBoxWidget(
                      height: h * 0.015,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Container(
                            height: h * 0.06,
                            width: w * 0.14,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.red),
                            ),
                            child: const Icon(
                              IconRes.logoutIcon,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                          sizedBoxWidget(
                            width: w * 0.020,
                          ),
                          commonTextWidget(
                              text: 'Logout',
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                          const Spacer(),
                          const Icon(
                            IconRes.arrowIcon,
                            size: 22,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

Widget listOfAuther() {
  return SizedBox(
    height: h * 0.1739,
    width: w * 0.9926,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Stack(children: [
          Container(
            // height: 155,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/image/Nikhileswar-Sahitya-Akdemi-ProfilePic.jpg'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                const Text(
                  'Nikhileshwar',
                  style: TextStyle(
                      fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]);
      },
    ),
  );
}
