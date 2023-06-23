import 'package:flutter/material.dart';

Widget circleAvtarWidget({ImageProvider<Object>? backgroundImage,void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: CircleAvatar(
      radius: 60,
      backgroundImage:backgroundImage ,
    ),
  );
}