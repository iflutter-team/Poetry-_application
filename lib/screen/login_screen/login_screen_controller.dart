import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:poetry/screen/signup_screen/signup_screen.dart';

import '../../common/termscondition.dart';
import '../bottom_navbar_screen/bottom_navbar_screen.dart';

class LoginController extends GetxController {
  // GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool visiBal = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseDatabase database = FirebaseDatabase.instance;
  List<Map> userdata = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // loginButton();
    // email.clear();
    // password.clear();
    //
    // termsAndConditionDialog(acceptOnPressed: () {
    //   Get.offAll(const BottomNavBarSrceen());
    // });
  }

  String? emailLoginError;

  String? emailCondition(String? value) {
    if (value == null || value.isEmpty) {
      emailLoginError = "Enter Email";
    } else if (!GetUtils.isEmail(value)) {
      emailLoginError = "Enter Valid Email";
    } else {
      emailLoginError = null;
    }
    update(['email']);
  }

  String? passLoginError;

  String? passWordCondition(String? value) {
    // update(['password']);
    if (value!.length <= 6) {
      return passLoginError = "Enter Password Must be six Letter";
    } else {
      passLoginError = null;
    }
    update(['password']);
    // return null;
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
    emailCondition(email.text);
    passWordCondition(password.text);
    if (emailLoginError == null && passLoginError == null) {
      var data = await database.ref('Person').once();
      Map temp = data.snapshot.value as Map;
      userdata.clear();
      temp.forEach((key, value) {
        userdata.add(value);
      });
      print(userdata);
      userdata.forEach((element) async {
        if (element['Email'] == email.text &&
            element['Password'] == password.text) {
          // await termsAndConditionDialog(
          // acceptOnPressed: () => Get.offAll(const BottomNavBarSrceen()),
          // declineOnPressed: () {
          Get.off(() => const BottomNavBarSrceen());
          // });
          email.clear();
          password.clear();
        } else {
          // Get.snackbar("Login Failed", "Enter valid UserName or Password");
        }
      });
    } else {
      Get.snackbar('Login Failed', 'Fill The Information',
          backgroundColor: Colors.white30);
    }
    update(['LoginButton']);
  }

  void account() {
    Get.to(() => SignUpScreen());
  }

  void backArrow() {
    Get.back();
  }
}
