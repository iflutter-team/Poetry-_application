import 'package:flutter/material.dart';

Widget sizedBoxWidget({double? height, double? width, Widget? child}) {
  return SizedBox(
    height: height,
    width: width,
    child: child,
  );
}
