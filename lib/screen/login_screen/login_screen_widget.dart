import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/textfieldwidget.dart';
import 'package:poetry/screen/login_screen/login_screen_controller.dart';
import 'package:poetry/utils/asset_res.dart';

import '../../utils/string_res.dart';

Widget loginPageImage({double? height,double? width}) {
  return Image.asset(
    AssetRes.loginScreenImg,
    height:height,
    width: width,
  );
}

Widget forgetPassWordButton({required void Function()? onPressed}) {
  return TextButton(
    onPressed: onPressed,
    child: const Text(
      "${StringRes.forgetPassString} ?",
      style: TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
    ),
  );
}

Widget textFieldWidget(){
  double h=Get.height;
  double w=Get.width;
  return  GetBuilder<LoginController>(
    builder: (controller) {
      return commonTextField(
          controlller: controller.email,
          validator: (val) {
        return val!.isEmpty ? 'Please Enter Email' : null;
      },
      hintTextString: StringRes.emailString,
      width: w * 0.893,
      height: h * 0.067,
      );
    }
  );
}