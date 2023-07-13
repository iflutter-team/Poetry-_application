import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/login_screen/login_screen.dart';

import '../../model/forgotpassword_model.dart';
import 'forgetpassword_api.dart';

class ForGetController extends GetxController {
  bool forGetVisiBal = true;
  bool forGetNewVisiBal = true;

  TextEditingController forgetEmail = TextEditingController();
  TextEditingController forgetPassword = TextEditingController();
  TextEditingController createNewPassword = TextEditingController();

  String? forGetEmailCondition(val) {
    update(['email']);
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val!);

    return emailValid ? null : 'Please Enter Valid Email Address';
  }

  String? forGetPassWordCondition(val) {
    // update(['password']);
    bool passValid =
        RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(val!);
    return passValid
        ? null
        : 'contain atLeast one Capital Letter, Small Letters, Numbers & a special character ';
  }

  ForgotPasswordModel? forgotPasswordData;
  Future<void> forgotPassword() async {
    Map<String, dynamic> body = {
      "email": forgetEmail.text.trim(),
    };

    forgotPasswordData=await ForgotPasswordApi.forgotPassword(body);
    if(forgotPasswordData!=null && forgotPasswordData!.status == 200){
      Get.to(LoginScreen());
    }
  }

  void forGetPassSuFix() {
    forGetVisiBal = !forGetVisiBal;
    update(['forGetPassword']);
  }

  void forGetNewPassSuFix() {
    forGetNewVisiBal = !forGetNewVisiBal;
    update(['forGetNewPassword']);
  }

  void confirmButton() {
    forgotPassword();
    Get.to(LoginScreen());
  }

  void forGetBackArrow() {
    Get.back();
    forgetEmail.clear();
    forgetPassword.clear();
    createNewPassword.clear();
  }
}
