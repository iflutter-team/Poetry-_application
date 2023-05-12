import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../utils/asset_res.dart';

Widget splashScreenImage() {
  double h = Get.height;
  double w = Get.width;
  return Image.asset(
    AssetRes.splashScreenImg,
    height: h * 0.500,
    width: w * 0.500,
  );
}
