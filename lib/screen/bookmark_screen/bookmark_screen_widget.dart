import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/animatedcontainerwidget.dart';
import '../../common/common_container.dart';
import '../../common/text_widget.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import 'bookmark_screen_controller.dart';

Widget pageViewOfBookmarkScreen() {
  return GetBuilder<BookmarkScreenController>(builder: (controller) {
    return Expanded(
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        onPageChanged: controller.pageViewOfBookmarkScreen,
        itemBuilder: (context, index) {
          return poemFrameOfPageView();
        },
      ),
    );
  });
}

double w = Get.width;
double h = Get.height;

Widget poemFrameOfPageView() {
  return commonContainer(
    height: h * 0.68,
    width: w * 0.98,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          AssetRes.goldenFrameImage,
        ),
      ),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Column(
            //   children: [
            //     // Padding(
            //     //   padding: EdgeInsets.only(left: w * 0.095, bottom: h * 0.27),
            //     //   child: Image.asset(AssetRes.collectionIconImage),
            //     // ),
            //   ],
            // ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.14),
                      child: Container(
                          height: h * 0.040,
                          width: w * 0.58,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(AssetRes.whiteBorderCurveImage),
                            fit: BoxFit.fill,
                          )),
                          child: Text(
                            'You Heal My Wounds',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.010,
                ),
                Row(
                  children: [
                    commonTextWidget(
                        text: StringRes.poemString,
                        fontSize: 15,
                        textAlign: TextAlign.center,
                        color: Colors.white)
                  ],
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(top: h * 0.56, right: w * 0.09),
            //       child: Image.asset(
            //         AssetRes.shareIconImage,
            //         width: w * 0.060,
            //       ),
            //     )
            //   ],
            // )
          ],
        )
      ],
    ),
  );
}

Widget pageViewOfBookmark() {
  return GetBuilder<BookmarkScreenController>(
      id: 'indicator',
      builder: (controller) {
        return SizedBox(
          height: h * 0.070,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              commonDot(
                  index:  controller.index=0,
                  pageIndex: controller.pageIndex,
                  color: controller.index == controller.pageIndex
                      ? ColorRes.bookmarkColor
                      : ColorRes.bookmarkColor.withOpacity(0.5)

              ),
              commonDot(
                  index:  controller.index=1,
                  pageIndex: controller.pageIndex,
                  color:  controller.index == controller.pageIndex
                      ? ColorRes.bookmarkColor
                      : ColorRes.bookmarkColor.withOpacity(0.5)

              ),
              commonDot(
                  index:  controller.index=2,
                  pageIndex: controller.pageIndex,
                  color:  controller.index == controller.pageIndex
                      ? ColorRes.bookmarkColor
                      : ColorRes.bookmarkColor.withOpacity(0.5)
              ),
            ],
          ),
        );
      });
}
