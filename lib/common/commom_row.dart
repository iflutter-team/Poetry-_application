import 'package:flutter/material.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/common/text_widget.dart';

import '../utils/color_res.dart';
import '../utils/string_res.dart';

Widget commonRow({required String text,required double width,required void Function()? onPressed,required void Function()? onPressedView}) {
  return Column(
    children: [
      Row(
        children: [
          TextButton(
            onPressed: onPressed,
            child: commonTextWidget(
                text: text,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorRes.whiteColor),
          ),
          sizedBoxWidget(width:width),
          TextButton(
            onPressed: onPressedView,
            child: commonTextWidget(
                text: StringRes.viewAll,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorRes.whiteColor),
          )
        ],
      ),
    ],
  );
}
