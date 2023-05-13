import 'package:flutter/material.dart';

Widget backArrow({required void Function()? onPressed}) {
  return IconButton(
    color: Colors.white,
    onPressed: onPressed,
    icon: const Icon(
      Icons.arrow_back,
    ),
  );
}