import 'package:flutter/material.dart';

Widget paddingWidget(
    {required double left,
      required double right,
      required double top,
      required double bottom,
      required Widget widget,
    }) {
  return Padding(
    padding: EdgeInsets.only(left: left, right: right, top: top,bottom: bottom),
    child: widget,
  );
}