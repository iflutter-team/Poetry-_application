import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/iconbutton_widget.dart';
import 'package:poetry/common/text_widget.dart';
import 'package:poetry/utils/asset_res.dart';

import '../../utils/color_res.dart';
import '../../utils/string_res.dart';

import 'bottom_navbar_screen_controller.dart';


// int index = 0;

Widget bottomNavBar() {
  double h = Get.height;
  double w = Get.width;
  return GetBuilder<BottomNavBarController>(
      id: "navigationBar",
      builder: (controller) {
        return Stack(
          children: [
            SizedBox(
              height: h,
              width: w,
              child: controller.screen[controller.selectedIndex],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: w,
                height: h * 0.080,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(w, 80),
                      painter: CustomPainterWidget(),
                    ),
                    Container(
                      height: h * 0.70,
                      width: w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              commonIconButton(
                                  onPressed: () => controller.onTapBottom(0),
                                  icon: Icon(controller.selectedIndex == 0
                                      ? Icons.home
                                      : Icons.home_outlined)),
                              commonTextWidget(text: StringRes.homeText)
                            ],
                          ),
                          Column(
                            children: [
                              commonIconButton(
                                  onPressed: () => controller.onTapBottom(1),
                                  icon: Icon(controller.selectedIndex == 1
                                      ? Icons.bookmark
                                      : Icons.bookmark_border)),
                              commonTextWidget(text: StringRes.bookmarkText)
                            ],
                          ),
                          Container(
                            width: w * 0.15,
                          ),
                          Column(
                            children: [
                              commonIconButton(
                                  onPressed: () => controller.onTapBottom(3),
                                  icon: Icon(controller.selectedIndex == 3
                                      ? Icons.notifications
                                      : Icons.notifications_none)),
                              commonTextWidget(text: StringRes.notificationText)
                            ],
                          ),
                          Column(
                            children: [
                              commonIconButton(
                                  onPressed: () => controller.onTapBottom(4),
                                  icon: Icon(controller.selectedIndex == 4
                                      ? Icons.person
                                      : Icons.person_outline)),
                              commonTextWidget(text: StringRes.profileText)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      heightFactor: 0.6,
                      child: FloatingActionButton(
                        onPressed: () => controller.onTapBottom(2),
                        backgroundColor: controller.selectedIndex == 2
                            ? ColorRes.greenColor
                            : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: DottedBorder(
                            color: controller.selectedIndex == 2
                                ? Colors.white
                                : ColorRes.greenColor,
                            borderType: BorderType.Circle,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                color: controller.selectedIndex == 2
                                    ? Colors.white
                                    : ColorRes.greenColor,
                                AssetRes.featherImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      });
}

class CustomPainterWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(10), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
