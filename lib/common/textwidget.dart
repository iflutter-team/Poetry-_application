import 'package:flutter/material.dart';

Widget commonTextWidget(
    {required String text,
      double? fontsize,
      FontWeight? fontWeight,
      Color? color,
      String? fontFamily,
      FontStyle? fontStyle,
      TextDecoration? decoration,
      TextAlign? textAlign,
    }
    ) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontsize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      decoration: decoration,

    ),
    textAlign: textAlign,
  );
}