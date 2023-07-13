import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:poetry/screen/home_screen/home_screen.dart';
import 'package:poetry/screen/signup_screen/signup_screen.dart';

import '../../model/login_model.dart';
import '../bottom_navbar_screen/bottom_navbar_screen.dart';
import 'login_api.dart';

class LoginController extends GetxController {
  bool visiBal = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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
    return null;
  }

  String? passLoginError;

  String? passWordCondition(String? value) {
     update(['password']);
    if (value!.length <= 6) {
      return passLoginError = "Enter Password Must be six Letter";
    } else {
      passLoginError = null;
    }
    return null;
  }

  void passSuFix() {
    visiBal = !visiBal;
    update(['password']);
  }

  void forGetPage() {
    Get.to(const ForGetPassWord());
  }

  Future<void> loginButton() async {
    print('login click');
    emailCondition(email.text);
    passWordCondition(password.text);
    if (emailLoginError == null && passLoginError == null) {
      // var data = await database.ref('Person').once();
      // Map temp = data.snapshot.value as Map;
      // userdata.clear();
      // temp.forEach((key, value) {
      //   userdata.add(value);
      // });
      // print(userdata);
      // userdata.forEach((element) async {
      //   if (element['Email'] == email.text &&
      //       element['Password'] == password.text) {
      //     // await termsAndConditionDialog(
      //     // acceptOnPressed: () => Get.offAll(const BottomNavBarSrceen()),
      //     // declineOnPressed: () {
      //     // });
      //     email.clear();
      //     password.clear();
      //   } else {
           // Get.snackbar("Login Failed", "Enter valid UserName or Password");
          userLogin();
          // email.clear();
          // password.clear();
      //   }
      // });
    } else {
      Get.snackbar('Login Failed', 'Fill The Information',
          backgroundColor: Colors.white30);
    }
    update(['LoginButton']);
  }

  LoginModel? loginData;
  Future<void> userLogin() async {
    Map<String, dynamic> body = {
      "email": email.text.trim(),
      "password": password.text.trim(),
    };

    loginData=await LoginApi.loginUser(body);
    if(loginData!=null && loginData!.status == 200){
      Get.off(() => const BottomNavBarSrceen());
    }
  }

  void account() {
    Get.to(() => SignUpScreen());
  }

  void backArrow() {
    Get.back();
  }
}
