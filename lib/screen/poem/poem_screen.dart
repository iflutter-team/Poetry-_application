import 'package:flutter/material.dart';

import '../../common/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';

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
        actionIcon: IconRes.favoriteIcon,
        title: StringRes.poem,
        leadingIcon: Icons.arrow_back_sharp,
        actionIcon: Icons.favorite,
      ),
      body: Column(
        children: const [

        ],
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [poemFrame(), poemFrame()],
        ),
      ),
    );
  }
}
