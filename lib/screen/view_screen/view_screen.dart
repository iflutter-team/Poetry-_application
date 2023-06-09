import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/view_screen/view_screen_widget.dart';

import '../../common/common_appbar.dart';
import '../../common/sizedbox_widget.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'view_screen_controller.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ViewController());
    double h = Get.height;
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        onTapBack: () => Get.back(),
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.poetry,
        leadingIcon: IconRes.backArrowIcon,
        actionIcon: IconRes.favoriteIcon, onTap: () {},
      ),
      body: Center(
        child: Column(
          children: [
            sizedBoxWidget(height: h * 0.04),
            viewContainer(context,
                title: StringRes.topLovePoems,
                assetImage: const AssetImage(AssetRes.youngCoupleImage)),
            sizedBoxWidget(height: h * 0.05),
            viewContainer(context,
                title: StringRes.topFriendshipPoems,
                assetImage: const AssetImage(AssetRes.friendshipImage)),
          ],
        ),
      ),
    );
  }
}
