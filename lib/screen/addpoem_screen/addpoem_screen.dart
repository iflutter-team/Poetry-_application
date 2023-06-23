import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/padding_widget.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/screen/addpoem_screen/addpoem_screen_controller.dart';

import '../../common/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import '../bottom_navbar_screen/bottom_navbar_screen_controller.dart';
import 'addpoem_screen_widget.dart';

class AddPoemScreen extends StatelessWidget {
  const AddPoemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AddPoemController());
    double h = Get.height;
    double w = Get.width;

    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        onTapBack:()=>Get.find<BottomNavBarController>().onTapBack(),
        title: StringRes.addPoem,
        leadingIcon: IconRes.backArrowIcon,
        actionIcon: IconRes.favoriteIcon, onTap: () {  },
      ),
      body: paddingWidget(
        left: w * 0.04,
        right: w * 0.04,
        top: h * 0.05,
        bottom: h * 0.0,
        widget: Column(
          children: [
            dropDownButtonWidget(),
            sizedBoxWidget(
              height: h*0.04,
            ),
            titleWidget(),
            sizedBoxWidget(
              height: h*0.04,
            ),
            addPoemWidget(),
            sizedBoxWidget(
              height: h*0.01,
            ),
            rowWidget(),
            sizedBoxWidget(
              height: h * 0.116,
            ),
            saveButton(),
          ],
        ),
      ),
    );
  }
}
