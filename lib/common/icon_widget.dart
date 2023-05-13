import 'package:flutter/material.dart';

Widget iconWidget({
  Color? color,
  double? size,
   required Widget icon,
void Function()? onPressed
}) {
  return IconButton(onPressed: onPressed, icon: icon);
}
