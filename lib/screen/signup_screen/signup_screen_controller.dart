import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:poetry/screen/signup_screen/signup_api.dart';
import 'package:poetry/services/firebase_services.dart';

import '../../common/termscondition.dart';
import '../../model/register_model.dart';
import '../login_screen/login_screen.dart';

class SignUpController extends GetxController {
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
  void forGetPassSuFix() {
    signupVisiBal = !signupVisiBal;
    update(['validation']);
  }

  String? fullError;
  String? fullNameCondition(val) {
    if(val==null||val.isEmpty){
      fullError="Enter Name";
    }else{
      fullError=null;
    }
    update(['validation']);

  }
  String? userError;
  String? userNameCondition(val) {
   // return val!.isEmpty ? "Please enter username" : null;
    if(val==null||val.isEmpty){
      userError="Enter User";
    }
    // else if(!GetUtils.isUsername(val)){
    //   userError="Enter Valid User";
    // }
    else{
      userError=null;
    }
    update(['validation']);
  }

  // String? signupEmailCondition(val) {
  //   update(['email']);
  //   bool emailValid = RegExp(
  //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //       .hasMatch(val!);
  //
  //   return emailValid ? null : 'Please Enter Valid Email Address';
  // }


  // String? signupPassWordCondition(val) {
  //   // update(['password']);
  //   bool passValid =
  //       RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(val!);
  //   return passValid
  //       ? null
  //       : 'contain atLeast one Capital Letter, Small Letters, Numbers & a special character ';
  // }
  String? emailError;
  void signupEmailCondition(String? value){
    if(value==null||value.isEmpty){
      emailError="Enter Email";
    }else if(!GetUtils.isEmail(value)){
      emailError="Enter Valid Email";
    }else{
      emailError=null;
    }
    update(['validation']);
  }
  String? passError;
  String? signupPassCondition(String? value){
    // if(value==null||value.isEmpty){
    //   passError="Enter Password";
    // }else if(!GetUtils.isAlphabetOnly(value)){
    //   passError="Enter Valid Password";
    // }else{
    //   passError=null;
    // }
    if(value!.length<=6){
      return passError="Enter Password Must be six Letter";
    }else{
      passError=null;
    }
    update(['validation']);
   // return null;
  }


  Future<void> signupButton() async {
    fullNameCondition(fullName.text);
    signupEmailCondition(signupEmail.text);
    userNameCondition(username.text);
    signupPassCondition(signupPassword.text);
    if(fullError==null && emailError==null && userError==null && passError==null ){
      // await termsAndConditionDialog(acceptOnPressed: (){
      //   print("i accept terms and condition");
      //   termsConditionsAgreedCheckbox = true;
      //   print(termsConditionsAgreedCheckbox);
      //   update(['validation']);
      //   Get.back();
      // }, declineOnPressed: (){
      //   print("i decline terms and condition");
      //   termsConditionsAgreedCheckbox = false;
      //   print(termsConditionsAgreedCheckbox);
      //   update(['validation']);
      //   Get.back();
      // });
      if (termsConditionsAgreedCheckbox == true) {
        //print(termsConditionsAgreedCheckbox);
       await FirebaseServices.addData('Person', {
          'FullName': fullName.text,
          'username': username.text,
          'Email': signupEmail.text,
          'Password': signupPassword.text
        });
       userSignUp();
        Get.back();
        fullName.clear();
        username.clear();
        signupEmail.clear();
        signupPassword.clear();
        termsConditionsAgreedCheckbox = false;

      }
      else{
        Get.snackbar('SignUp Error', 'Please Select Tearms and Conditions');
      }
    }
    else{
      Get.snackbar('signup fail', 'Enter valid User');
    }
    update(['validation']);
  }


  String? termsAndCondition(agreedToChecked) {
    termsConditionsAgreedCheckbox = !termsConditionsAgreedCheckbox;
    update(['validation']);
    return null;
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

  RegisterModel? register;
  Future userSignUp() async {
    Map<String, dynamic> body = {
      "fullname": fullName.text.trim(),
      "username": username.text.trim(),
      "email": signupEmail.text.trim(),
      "password": signupPassword.text.trim(),
    };
    register=await SignupApi.registerUser( body);
    if(register!=null && register!.status == 0){
      Get.back();
    }
  }
}
