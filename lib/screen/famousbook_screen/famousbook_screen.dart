import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/famousbook_screen/famousbook_screen_controller.dart';
import 'package:poetry/utils/color_res.dart';

import '../../common/common_appbar.dart';
import '../../utils/string_res.dart';
import 'famousbook_screen_widget.dart';

class FamousBook extends StatelessWidget {
  const FamousBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FamousBookController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.famousBook,
        leadingIcon: Icons.arrow_back_sharp,
        actionIcon: Icons.favorite,
      ),
      body: Column(
        children: [
          famousBookListview(),
        ],
      ),
    );
  }
}
