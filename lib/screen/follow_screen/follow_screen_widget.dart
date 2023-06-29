import 'package:flutter/material.dart';
import 'package:poetry/common/common_container.dart';
import 'package:poetry/common/iconbutton_widget.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/string_res.dart';

import '../../utils/color_res.dart';

Widget container() {
  return commonContainer(
    height: 300,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: ColorRes.greenColor,
      image: DecorationImage(
          image: AssetImage(AssetRes.arijitSinghImage), fit: BoxFit.cover),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        children: [
          commonTextWidget(
            text: StringRes.arijitsinghText,
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
          sizedBoxWidget(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorRes.whiteColor)
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: commonTextWidget(
                        text: 'Follow',
                        color: ColorRes.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: ColorRes.whiteColor)
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: commonTextWidget(
                      text: 'Follow',
                      color: ColorRes.whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
