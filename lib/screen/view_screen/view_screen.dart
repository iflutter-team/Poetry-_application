import 'package:flutter/material.dart';
import 'package:poetry/screen/view_screen/view_screen_widget.dart';

import '../../common/common_appbar.dart';
import '../../common/sizedbox_widget.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: commonAppbar(
        color: ColorRes.greenColor,
        backgroundColor: ColorRes.whiteColor,
        context,
        title: StringRes.poetry,
        leadingIcon: Icons.arrow_back_sharp,
        actionIcon: Icons.favorite,
      ),
      body: Center(
        child: Column(
          children: [
            sizedBoxWidget(height: h*0.04),
            viewContainer(context,
                title: StringRes.topLovePoems,
                assetImage: const AssetImage(AssetRes.youngCoupleImage)),
        sizedBoxWidget(height: h*0.05),
        viewContainer(context,
                title: StringRes.topFriendshipPoems,
                assetImage: const AssetImage(AssetRes.friendshipImage)),
          ],
        ),
      ),
    );
  }
}
