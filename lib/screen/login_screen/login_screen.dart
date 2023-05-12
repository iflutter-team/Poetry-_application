import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/paddingwidget.dart';
import 'package:poetry/common/textfieldwidget.dart';
import 'package:poetry/common/textwidget.dart';
import 'package:poetry/screen/login_screen/login_screen_controller.dart';
import 'package:poetry/screen/login_screen/login_screen_widget.dart';
import 'package:poetry/utils/color_res.dart';

import '../../common/backarrowwidget.dart';
import '../../utils/string_res.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double h = Get.height;
  double w = Get.width;

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      body: paddingWidget(
        left: w * 0.015,
        right: w * 0.015,
        top: h * 0.050,
        widget: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                children: [backArrow()],
              ),
              SizedBox(
                height: h * 0.0304,
              ),
              loginPageImage(height: h*0.260),
              SizedBox(
                height: h * 0.0304,
              ),
              commonTextWidget(
                  text: StringRes.loginString, fontsize: 18, color: Colors.white),
              SizedBox(
                height: h * 0.0299,
              ),
              textFieldWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
