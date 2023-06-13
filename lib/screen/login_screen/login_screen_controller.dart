import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:poetry/screen/signup_screen/signup_screen.dart';

import '../../common/termscondition.dart';
import '../bottom_navbar_screen/bottom_navbar_screen.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool visiBal = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loginButton();
    // email.clear();
    // password.clear();
    //
    // termsAndConditionDialog(acceptOnPressed: () {
    //   Get.offAll(const BottomNavBarSrceen());
    // });
  }

  String? emailCondition(val) {
    update(['email']);
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val!);

    return emailValid ? null : 'Please Enter Valid Email Address';
  }

  String? passWordCondition(val) {
    // update(['password']);
    bool passValid =
        RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(val!);
    return passValid
        ? null
        : 'contain atLeast one Capital Letter, Small Letters, Numbers & a special character ';
  }

  void passSuFix() {
    visiBal = !visiBal;
    update(['password']);
  }

  void forGetPage() {
    Get.to(const ForGetPassWord());
  }

  //var screenIndex = 'loginScreen';
  Future<void> loginButton() async {
    print('login click');
    if (loginKey.currentState!.validate()) {
      await termsAndConditionDialog(
          acceptOnPressed: () => Get.offAll(const BottomNavBarSrceen()),
          declineOnPressed: () {
            Get.back();
          });
      email.clear();
      password.clear();
    } else {
      Get.snackbar('Login Failed', 'Fill The Information',
          backgroundColor: Colors.white30);
    }
    update(['LoginButton']);
  }

  void account() {
    Get.to(SignUpScreen());
  }

  void backArrow() {
    Get.back();
  }
}
