import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/sizedbox_widget.dart';
import 'package:poetry/screen/home_screen/home_screen_controller.dart';
import 'package:poetry/utils/color_res.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=Get.height;
    Get.put(HomeScreenController());
    return Scaffold(
      backgroundColor: ColorRes.greenColor,
      appBar: appBarWidget(),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                carouselSliderWidget(),
                pageView(),
                rowWidget(),
                popularCategoriesList(context),
                rowTwoWidget(),
                topPoetsList(context),
                rowThreeWidget(),
                famousBookList(context),
                rowThreeWidget(),
                topPoetsList(context),
                sizedBoxWidget(height: h*0.10),
              ],
            ),
          ),
          containerCondition(),
          animatedContainer(context),
        ],
      ),
    );
  }
}
