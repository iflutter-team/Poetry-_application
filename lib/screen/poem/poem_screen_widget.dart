import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/text_widget.dart';

import '../../common/common_container.dart';
import '../../utils/asset_res.dart';
import '../../utils/string_res.dart';

Widget poemFrame() {
  double w = Get.width;
  double h = Get.height;
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
            //     Padding(
            //       padding: EdgeInsets.only(left: w * 0.090, bottom: h * 0.26),
            //       child: Image.asset(AssetRes.collectionIconImage),
            //     ),
            //   ],
            // ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.140),
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
            //       padding: EdgeInsets.only(top: h * 0.52, right: w * 0.08),
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
