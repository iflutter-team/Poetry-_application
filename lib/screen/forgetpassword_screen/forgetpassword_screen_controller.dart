import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/login_screen/login_screen.dart';

class ForGetController extends GetxController {
  bool forGetVisiBal = true;
  bool forGetNewVisiBal = true;

  TextEditingController forgetEmail = TextEditingController();
  TextEditingController forgetPassword = TextEditingController();
  TextEditingController createNewPassword = TextEditingController();

  String? forGetEmailCondition(val) {
    update(['email']);
    val!.isEmpty ? 'Please Enter Email' : null;
    return null;
  }

  String? forGetPassWordCondition(val) {
    // update(['password']);
    bool passValid =
        RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(val!);
    return passValid
        ? null
        : 'contain atLeast one Capital Letter, Small Letters, Numbers & a special character ';
  }

  void forGetPassSuFix() {
    forGetVisiBal = !forGetVisiBal;
    update(['forGetPassword']);
  }

  void forGetNewPassSuFix(){
    forGetNewVisiBal=!forGetNewVisiBal;
    update(['forGetNewPassword']);
  }
  void confirmButton() {
    Get.to( const LoginScreen());
  }

  void forGetBackArrow() {
    Get.back();
  }
}
