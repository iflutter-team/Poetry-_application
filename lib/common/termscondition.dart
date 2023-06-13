import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/sizedbox_widget.dart';

import '../utils/color_res.dart';
import '../utils/icon_res.dart';
import '../utils/string_res.dart';
import 'iconbutton_widget.dart';
import 'padding_widget.dart';
import 'text_widget.dart';

Future<void> termsAndConditionDialog(
    {required void Function()? acceptOnPressed,
    required void Function()? declineOnPressed}) async {
  double h = Get.height;
  double w = Get.width;
  Get.dialog(
    SimpleDialog(
      contentPadding: const EdgeInsets.all(15),
      insetPadding: EdgeInsets.only(left: w * 0.020, right: w * 0.020),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      backgroundColor: Colors.white.withOpacity(0.3),
      children: [
        sizedBoxWidget(
          height: h * 0.86,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  sizedBoxWidget(height: h * 0.0269),
                  iconWidget(
                      icon: const Icon(IconRes.clearIcon,
                          color: ColorRes.whiteColor),
                      onPressed: () {
                        Get.back();
                      }),
                ],
              ),
              sizedBoxWidget(height: h * 0.030),
              Row(
                children: [
                  commonTextWidget(
                      text: StringRes.termsAndConditionString,
                      color: Colors.white,
                      fontSize: h * 0.025,
                      fontWeight: FontWeight.w700)
                ],
              ),
              sizedBoxWidget(height: h * 0.030),
              Column(
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: commonTextWidget(
                      text: StringRes.allTerms,
                      height: 1.7,
                      color: Colors.white,
                      fontSize: h * 0.016,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorRes.whiteColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                      ),
                      onPressed: acceptOnPressed,
                      //     {
                      //   Get.offAll(const BottomNavBarSrceen());
                      // },
                      child: paddingWidget(
                        left: w * 0.06,
                        right: w * 0.06,
                        bottom: h * 0.020,
                        top: h * 0.020,
                        widget: commonTextWidget(
                            text: StringRes.acceptButtonText,
                            color: const Color(0xff274e13),
                            fontWeight: FontWeight.w800),
                      )),
                  const Spacer(),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorRes.whiteColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                      ),
                      onPressed: declineOnPressed,
                      //     () {
                      //   Get.back();
                      // },
                      child: paddingWidget(
                        left: w * 0.06,
                        right: w * 0.06,
                        bottom: h * 0.020,
                        top: h * 0.020,
                        widget: commonTextWidget(
                          text: StringRes.declineButtonText,
                          color: const Color(0xff274e13),
                          fontWeight: FontWeight.w800,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
