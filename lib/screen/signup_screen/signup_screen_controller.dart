import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/signup_screen/signup_api.dart';
import 'package:poetry/services/firebase_services.dart';

import '../../common/termscondition.dart';
import '../../model/register_model.dart';
import '../login_screen/login_screen.dart';

class SignUpController extends GetxController {
  // GlobalKey<FormState> signupKey = GlobalKey<FormState>();
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool signupVisiBal = true;
  bool termsConditionsAgreedCheckbox = false;

  TextEditingController fullName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController signupEmail = TextEditingController();
  TextEditingController signupPassword = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //signupButton();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void signUpBackArrow() {
    Get.back();
  }

  String? fullNameCondition(val) {
    return val!.isEmpty ? "Please enter username" : null;
  }
  String? userNameCondition(val) {
    return val!.isEmpty ? "Please enter username" : null;
  }

  String? signupEmailCondition(val) {
    update(['email']);
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val!);

    return emailValid ? null : 'Please Enter Valid Email Address';
  }

  // String? signupPassWordCondition(val) {
  //   // update(['password']);
  //   bool passValid =
  //       RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(val!);
  //   return passValid
  //       ? null
  //       : 'contain atLeast one Capital Letter, Small Letters, Numbers & a special character ';
  // }
  String? emailerror;
  void signup(String? value){
    if(value==null||value.isEmpty){
      emailerror="Enter Email";
    }else if(!GetUtils.isEmail(value)){
      emailerror="Enter Valid Email";
    }else{
      emailerror=null;
    }
    update(['validation']);
  }


  void forGetPassSuFix() {
    signupVisiBal = !signupVisiBal;
    update(['forGetPassword']);
  }

  Future<void> signupButton() async {
    signup(signupEmail.text);
    // if (signupKey.currentState!.validate()) {
    //  await termsAndConditionDialog(acceptOnPressed: (){
    //     print("i accept terms and condition");
    //     termsConditionsAgreedCheckbox = true;
    //     print(termsConditionsAgreedCheckbox);
    //     update(['chkBoxCondition', 'checked']);
    //     Get.back();
    //   }, declineOnPressed: (){
    //     print("i decline terms and condition");
    //     termsConditionsAgreedCheckbox = false;
    //     print(termsConditionsAgreedCheckbox);
    //     update(['chkBoxCondition', 'checked']);
    //     Get.back();
    //   });
    //   if (termsConditionsAgreedCheckbox = true) {
    //     print(termsConditionsAgreedCheckbox);
    //     FirebaseServices.addData('Person', {
    //       'FullName': fullName.text,
    //       'username': username.text,
    //       'Email': signupEmail.text,
    //       'Password': signupPassword.text
    //     });
    //     Get.to(LoginScreen());
    //     fullName.clear();
    //     username.clear();
    //     signupEmail.clear();
    //     signupPassword.clear();
    //     termsConditionsAgreedCheckbox = false;
    //   }
    // } else {
    //   Get.snackbar('SignUp Failed', 'Fill The Information',
    //       backgroundColor: Colors.white30);
    // }
  // userSignUp();
    if(emailerror==null){
      Get.to(LoginScreen());
    }else{
      Get.snackbar('signup fail', 'Enter valid User');
    }
    update(['signupButton', 'chkBoxCondition', 'checked']);
  }

  String? termsAndCondition(agreedToChecked) {
    termsConditionsAgreedCheckbox = !termsConditionsAgreedCheckbox;
    update(['checked']);
    return null;
  }
void sign(){
    Get.to(LoginScreen());
}
  Future<void> chkBoxCondition() async {
    await termsAndConditionDialog(acceptOnPressed: () {
      print("i accept terms and condition");
      termsConditionsAgreedCheckbox = true;
      print(termsConditionsAgreedCheckbox);
      update(['chkBoxCondition', 'checked']);
      Get.back();
    }, declineOnPressed: () {
      print("i decline terms and condition");
      termsConditionsAgreedCheckbox = false;
      print(termsConditionsAgreedCheckbox);
      update(['chkBoxCondition', 'checked']);
      Get.back();
    });
  }
  Future userSignUp() async {
    Map<String, dynamic> body = {
      "fullname": fullName.text.trim(),
      "username": username.text.trim(),
      "email": signupEmail.text.trim(),
      "password": signupPassword.text.trim(),
    };
    RegisterModel? getPostData;
    getPostData = await SignupApi.registerUser(body: body);
    // if(getPostData!=null && getPostData!.status == 1){
    //   Get.off(()=>LoginPage());
    // }
  }
}
