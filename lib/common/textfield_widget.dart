import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

Widget commonTextField(
    {double? width,
    double? height,
    TextEditingController? controller,
    String? Function(dynamic val)? validator,
    required bool obscureText,
      void Function(String)? onChanged,
    Widget? suffixIcon,
    String? hintTextString,
    InputDecoration? decoration,
    bool? enabled,
   }) {
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
          suffixIcon: suffixIcon,
        ),
        onChanged: onChanged,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
