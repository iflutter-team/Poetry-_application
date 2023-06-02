import 'package:flutter/material.dart';

import '../../common/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

class PoemScreen extends StatelessWidget {
  const PoemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  commonAppbar(
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.famousBook,
        leadingIcon: IconRes.backArrowIcon,
        actionIcon: IconRes.favoriteIcon,
      ),
      body: Column(
        children: const [

        ],
      ),
    );
  }
}
