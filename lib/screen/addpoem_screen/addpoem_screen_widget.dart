import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/screen/addpoem_screen/addpoem_screen_controller.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/string_res.dart';
import '../../common/login_signup_button.dart';

Widget dropDownButtonWidget() {
  double h = Get.height;
  return GetBuilder<AddPoemController>(
      id: 'dropDownButton',
      builder: (controller) {
        return sizedBoxWidget(
          height: h * 0.06,
          child: DottedBorder(
            color: ColorRes.whiteColor,
            strokeWidth: 1,
            dashPattern: const [5, 3],
            borderType: BorderType.RRect,
            radius: const Radius.circular(10),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: DropdownButtonFormField(
                dropdownColor: ColorRes.greenColor,
                isExpanded: true,
                iconSize: 30,
                iconEnabledColor: ColorRes.whiteColor,
                decoration: const InputDecoration(border: InputBorder.none),
                value: controller.gender,
                hint: commonTextWidget(
                  text: StringRes.categories,
                  color: ColorRes.whiteColor,
                ),
                items: [
                  DropdownMenuItem(
                    value: 'BBA',
                    child: commonTextWidget(text: 'BBA', color: Colors.white),
                  ),
                  DropdownMenuItem(
                    value: 'BCA',
                    child: commonTextWidget(text: 'BCA', color: Colors.white),
                  ),
                  DropdownMenuItem(
                    value: 'BCOM',
                    child: commonTextWidget(text: 'BCOM', color: Colors.white),
                  )
                ],
                onChanged: controller.dropDownButtonCondition,
              ),
            ),
          ),
        );
      });
}

Widget titleWidget() {
  double h = Get.height;
  return GetBuilder<AddPoemController>(
    builder: (controller) {
      return sizedBoxWidget(
        height: h * 0.06,
        child: DottedBorder(
          color: ColorRes.whiteColor,
          strokeWidth: 1,
          dashPattern: const [5, 3],
          borderType: BorderType.RRect,
          padding: const EdgeInsets.all(10),
          radius: const Radius.circular(10),
          child: TextFormField(
            cursorColor: ColorRes.whiteColor,
            style: const TextStyle(color: ColorRes.whiteColor, fontSize: 14),
            decoration: const InputDecoration(
              hintText: StringRes.title,
              hintStyle: TextStyle(color: ColorRes.whiteColor, fontSize: 14),
              border: InputBorder.none,
            ),
          ),
        ),
      );
    },
  );
}

Widget addPoemWidget() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<AddPoemController>(
    builder: (controller) {
      return sizedBoxWidget(
        height: h * 0.25073,
        width: w * 0.8933,
        child: DottedBorder(
          color: ColorRes.whiteColor,
          strokeWidth: 1,
          dashPattern: const [5, 3],
          borderType: BorderType.RRect,
          padding: const EdgeInsets.only(left: 10),
          radius: const Radius.circular(10),
          child: TextFormField(
            cursorColor: ColorRes.whiteColor,
            style: const TextStyle(color: ColorRes.whiteColor, fontSize: 14),
            decoration: const InputDecoration(
              hintText: 'Pen down Your thought hear...',
              hintStyle: TextStyle(color: ColorRes.whiteColor, fontSize: 14),
              border: InputBorder.none,
            ),
          ),
        ),
      );
    },
  );
}

Widget rowWidget() {
  double w = Get.width;
  return GetBuilder<AddPoemController>(
    builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssetRes.favoriteImage,
              width: w * 0.06,
            ),
          ),
          SizedBox(
            width: Get.width * 0.64,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssetRes.saveImage,
              width: w * 0.04,
            ),
          ),
          SizedBox(
            width: Get.width * 0.04,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssetRes.downloadImage,
              width: w * 0.05,
            ),
          ),
          sizedBoxWidget(
            width: Get.width * 0.04,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssetRes.shareImage,
              width: w * 0.05,
            ),
          ),
        ],
      );
    },
  );
}

Widget saveButton() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<AddPoemController>(
    id: 'save',
    builder: (controller) {
      return commonBottomLoginORSignUpButton(
          leftPadding: w * 0.32,
          rightPadding: w * 0.32,
          topPadding: h * 0.02,
          bottomPadding: h * 0.02,
          onPressed: controller.saveButton,
          buttonText: StringRes.confirmPassWordString);
    },
  );
}
