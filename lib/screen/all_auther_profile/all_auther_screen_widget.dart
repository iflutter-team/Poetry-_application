import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/utils/color_res.dart';

double h = Get.height;
double w = Get.width;

Widget autherList() {
  return Expanded(
    child: GridView.builder(
      physics: const BouncingScrollPhysics(),
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
            boxShadow: [
              BoxShadow(
                color: Colors.white70,
                 offset: Offset(0, 5),
                blurRadius: 20.0,
              )
            ],
            borderRadius: BorderRadius.circular(10),
            //color: Colors.white.withOpacity(0.8),
            image: const DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage(
                  'assets/image/Nikhileswar-Sahitya-Akdemi-ProfilePic-removebg-preview.png'),
            ),
          ),
          child: const Stack(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Nikhileshwar',
                style: TextStyle(color: (ColorRes.greenColor), fontSize: 17),
              ),
            )
          ]),
        );
      },
    ),
  );
}
