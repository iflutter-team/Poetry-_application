import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

Widget commonTextField(
    {required double width,
      required double height,
      required TextEditingController controller,
      required String? Function(dynamic val) validator,
      required bool obscureText,
      Widget? suffixIcon,
      required String hintTextString}) {
  return SizedBox(
    width: width,
    height: height,
    child: DottedBorder(
      strokeWidth: 2,
      dashPattern: const [6, 3, 6, 3],
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
            hintStyle: const TextStyle(color: Colors.white),
            hintText: hintTextString,
            border: InputBorder.none,
          suffixIcon:suffixIcon,
        ),
        obscureText:obscureText ,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}