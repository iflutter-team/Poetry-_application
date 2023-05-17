
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/padding_widget.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/screen/home_screen/home_screen.dart';
import 'package:poetry/utils/color_res.dart';

import '../../common/icon_widget.dart';
import '../../common/sizedbox_widget.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import '../login_screen/login_screen.dart';

class SignUpController extends GetxController {
  bool signupVisiBal = true;
  bool termsConditionsAgreedCheckbox = false;

  TextEditingController fullName = TextEditingController();
  TextEditingController signupEmail = TextEditingController();
  TextEditingController signupPassword = TextEditingController();

  void signUpBackArrow() {
    Get.back();
  }

  String? signupEmailCondition(val) {
    update(['email']);
    val!.isEmpty ? 'Please Enter Email' : null;
    return null;
  }

  String? signupPassWordCondition(val) {
    // update(['password']);
    bool passValid =
        RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(val!);
    return passValid
        ? null
        : 'contain atLeast one Capital Letter, Small Letters, Numbers & a special character ';
  }

  void forGetPassSuFix() {
    signupVisiBal = !signupVisiBal;
    update(['forGetPassword']);
  }

  void signupButton() {
    Get.to(const LoginScreen());
  }

  String? termsAndCondition(agreedToChecked) {
    update(['checked']);
    termsConditionsAgreedCheckbox = !termsConditionsAgreedCheckbox;
    return null;
  }

  void termsAndConditionDialog(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        contentPadding: const EdgeInsets.all(15),
        insetPadding: EdgeInsets.only(left: w * 0.020, right: w * 0.020),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        backgroundColor: Colors.white.withOpacity(0.3),
        children: [
          sizedBoxWidget(
            height: h * 0.86,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    sizedBoxWidget(height: h * 0.0269),
                    iconWidget(
                        icon: const Icon(IconRes.clearIcon,color: ColorRes.whiteColor),
                        onPressed: () {
                          Get.back();
                        }),
                  ],
                ),
                sizedBoxWidget(height: h* 0.030),
                Row(
                  children: [
                    commonTextWidget(
                      text:StringRes.termsAndConditionString,
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                    )
                  ],
                ),
                sizedBoxWidget(height: h * 0.030),
                Column(
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: commonTextWidget(
                        text: StringRes.allTerms,
                        height: 1.7,
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(ColorRes.whiteColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        onPressed: () {
                          Get.to(const HomeScreen());
                        },
                        child: paddingWidget(
                          left: w * 0.06,
                          right: w * 0.06,
                          bottom: h * 0.020,
                          top: h * 0.020,
                          widget: commonTextWidget(
                              text: StringRes.acceptButtonText,
                              color: const Color(0xff274e13),
                              fontWeight: FontWeight.w800),
                        )),
                    const Spacer(),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(ColorRes.whiteColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: paddingWidget(
                          left: w * 0.06,
                          right: w * 0.06,
                          bottom: h * 0.020,
                          top: h * 0.020,
                          widget: commonTextWidget(
                            text: StringRes.declineButtonText,
                            color: const Color(0xff274e13),
                            fontWeight: FontWeight.w800,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
