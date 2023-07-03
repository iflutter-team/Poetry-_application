import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poetry/screen/all_auther_profile/all_auther_screen_controller.dart';

import '../../common/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'all_auther_screen_widget.dart';

class AllAutherScreen extends StatelessWidget {
  const AllAutherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AutherScreen());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(context,
          backgroundColor: ColorRes.whiteColor,
          foregroundColor: ColorRes.greenColor,
          actionIcon: IconRes.favoriteIcon,
          onTap: () {},
          leadingIcon: IconRes.backArrowIcon,
          title: StringRes.allAutherScreenTitleText),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [autherList()]),
      ),
    );
  }
}
