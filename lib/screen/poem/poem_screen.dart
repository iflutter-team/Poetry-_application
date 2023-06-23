import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/poem/poem_screen_widget.dart';

import '../../common/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'poem_screen_controller.dart';

class PoemScreen extends StatelessWidget {
  const PoemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PoemScreenController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.famousBook,
        leadingIcon: IconRes.backArrowIcon,
        actionIcon: IconRes.favoriteIcon, onTap: () { },
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [poemFrame(), poemFrame()],
        ),
      ),
    );
  }
}
