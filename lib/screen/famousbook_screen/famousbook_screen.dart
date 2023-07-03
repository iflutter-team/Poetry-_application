import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/famousbook_screen/famousbook_screen_controller.dart';
import 'package:poetry/utils/color_res.dart';
import '../../common/common_appbar.dart';
import '../../utils/asset_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import '../bookmark_screen/bookmark_screen_widget.dart';
import 'famousbook_screen_widget.dart';

class FamousBook extends StatelessWidget {
  FamousBook({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.put(FamousBookController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        onTapBack: () => Get.back(),
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.famousBook,
        leadingIcon: IconRes.backArrowIcon,
        actionIcon: IconRes.favoriteIcon,
        onTap: () {},
      ),
      body: Column(
        children: [
          famousBookListview(
            containerHeight: Get.width * 0.560,
            containerWidth: Get.height * 0.400,
            bookHeight: Get.height*0.177,
            bookWidth: Get.width*0.25,
            child: Image.asset(
              AssetRes.saveImage,
              width: w * 0.05,
            ),
            lineImage: const AssetImage(
              AssetRes.lineImage,
            ),
            favoriteImage: const AssetImage(
              AssetRes.favoriteImage,
            ),
            shareImage: const AssetImage(
              AssetRes.shareImage,
            ),
          ),
        ],
      ),
    );
  }
}
