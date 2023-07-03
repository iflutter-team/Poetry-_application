import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

double h = Get.height;
double w = Get.width;

Widget autherList() {
  return Expanded(
    child: GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: h * 0.05,
          mainAxisSpacing: h * 0.05),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.8),
              image: DecorationImage(
                  image: AssetImage(
                      'Nikhileswar-Sahitya-Akdemi-ProfilePic-removebg-preview.png'),),),
        );
      },
    ),
  );
}
