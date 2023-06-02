import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import '../../utils/color_res.dart';
import 'notification_screen_controller.dart';
import 'notification_screen_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    Get.put( NotificationController());
    return  Scaffold(
       backgroundColor: ColorRes.greenColor,
        appBar:appBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          notificationWidget(context),
          sizedBoxWidget(
            height: h*0.08,
          ),
          containerWidget(),
        ],
      ),
    );
  }
}
