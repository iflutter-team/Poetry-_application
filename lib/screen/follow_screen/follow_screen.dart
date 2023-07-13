import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/follow_screen/follow_screen_controller.dart';
import '../../common/iconbutton_widget.dart';
import '../../common/text_widget.dart';
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
                pinned: true,
                backgroundColor: ColorRes.whiteColor,
                leading: commonIconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconRes.backArrowIcon,
                    color: ColorRes.greenColor,
                  ),
                ),
                centerTitle: true,
                title: commonTextWidget(
                  text: StringRes.topBookText,
                  color: ColorRes.greenColor,
                  fontSize: 16.0,
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
                        height: Get.height * 0.120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorRes.greenColor,
                          border: Border.all(color: ColorRes.whiteColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: Get.height * 0.09,
                                width: Get.width * 0.21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          StringRes.followList[index]['image']),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(Get.height * 0.01),
                                child: Image.asset(AssetRes.lineImage),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    commonTextWidget(
                                        text: StringRes.followList[index]
                                            ['title'],
                                        color: ColorRes.whiteColor,
                                        fontWeight: FontWeight.bold),
                                    commonTextWidget(
                                        text: StringRes.followList[index]
                                            ['subtitle'],
                                        color: ColorRes.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Image.asset(
                                StringRes.followList[index]['downloadImg'],
                                height: Get.height * 0.05,
                                width: Get.width * 0.05,
                              ),
                              commonIconButton(
                                onPressed: () {},
                                icon: Icon(
                                  StringRes.followList[index]['icon'],
                                  color: ColorRes.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
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
