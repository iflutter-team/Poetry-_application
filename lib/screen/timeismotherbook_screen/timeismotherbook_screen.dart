import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/timeismotherbook_screen/timeismotherbook_screen_controller.dart';
import 'package:poetry/screen/timeismotherbook_screen/timeismotherbook_screen_widget.dart';
import 'package:poetry/utils/color_res.dart';

import '../../common/common_appbar.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

class TimeIsMotherScreen extends StatelessWidget {
  const TimeIsMotherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TimeIsMotherController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.timeIsMother,
        leadingIcon: IconRes.backArrowIcon,
        actionIcon: IconRes.favoriteIcon,
      ),
      body: Column(
        children: [
          containerWidget(),
         const Spacer(),
          bottomNavigationBarWidget(),
        ],
      ),
    );
  }
}
