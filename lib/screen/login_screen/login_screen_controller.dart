import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:poetry/screen/signup_screen/signup_screen.dart';

import '../home_screen/home_screen.dart';

class LoginController extends GetxController {
  bool visiBal = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String? emailCondition(val) {
    update(['email']);
    val!.isEmpty ? 'Please Enter Email' : null;
    return null;
  }

  String? passWordCondition(val) {
    // update(['password']);
    bool passValid =
        RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(val!);
    return passValid
        ? null
        : 'contain atLeast one Capital Letter, Small Letters, Numbers & a special character ';

  }

  void passSuFix(){
    visiBal = !visiBal;
    update(['password']);
  }

  void forGetPage(){
    Get.to(const ForGetPassWord());
  }
  void loginButton(){
    Get.offAll(const HomeScreen());
  }
  void account(){
    Get.to( SignUpScreen());
  }
  void backArrow(){
    Get.back();
  }
}


