
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

class EmailOrPhoneController extends GetxController {
  String? emailForgetError;
  bool emailOrPhoneToOTP = false;
  final _pinPutController = TextEditingController();
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getOTPButton();
  }
  String? emailCondition(String? value) {
    if (value == null || value.isEmpty) {
      emailForgetError = "Enter Email";
    } else if (!GetUtils.isEmail(value)) {
      emailForgetError = "Enter Valid Email";
    } else {
      emailForgetError = null;
    }
    update(['EmailOrPhoneController']);
    return null;
  }

  void getOTPButton() {
    emailOrPhoneToOTP = true;
    update(['EmailOrPhoneController']);
  }


  // void _showSnackBar(String pin,BuildContext context) {
  //   final snackBar = SnackBar(
  //     duration: Duration(seconds: 4),
  //     content: Container(
  //       height: 80.0,
  //       child: Center(
  //         child: Text(
  //           'Pin Submitted: $pin',
  //           style: TextStyle(fontSize: 25.0),
  //         ),
  //       ),
  //     ),
  //     backgroundColor: Colors.green,
  //   );
  //   ScaffoldMessenger.of(context)
  //     ..hideCurrentSnackBar()
  //     ..showSnackBar(snackBar);
  // }
}
