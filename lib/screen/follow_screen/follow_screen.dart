import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poetry/screen/follow_screen/follow_screen_controller.dart';
import '../../common/iconbutton_widget.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

class FollowScreen extends StatelessWidget {
  const FollowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FollowController());
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorRes.greenColor,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: commonIconButton(
                  onPressed: () {},
                  icon: const Icon(IconRes.backArrowIcon),
                ),
                expandedHeight: Get.height * 0.350,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    AssetRes.pabloNeruda1Image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SliverList.builder(
                itemCount: StringRes.followList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: Get.height * 0.100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              StringRes.followList[index]['image'],
                            ),
                          ),
                        ),
                        child:
                            Image.asset(StringRes.followList[index]['image'],),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
          // body: Column(
          //   children: [
          //     // container(),
          //     // sizedBoxWidget(height: 20),
          //     // listviewWidget(),
          //   ],
          // ),
          ),
    );
  }
}
