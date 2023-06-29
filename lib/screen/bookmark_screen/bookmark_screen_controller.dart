import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color_res.dart';

class BookmarkScreenController extends GetxController {
  int pageIndex = 0;
  int index=0;
  PageController pageController = PageController();

  void pageViewOfBookmarkScreen(int value) {
    pageIndex = value;
    update(['indicator']);
  }

   colorConditionBookmarkScreen(){
    index == pageIndex
        ? ColorRes.bookmarkColor
        : ColorRes.bookmarkColor.withOpacity(0.5);
  }
  void onTabCondition(){
    Get.back();
  }
}
