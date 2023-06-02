import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkScreenController extends GetxController {
  int pageIndex = 0;
  PageController pageController = PageController();

  void pageViewOfBookmarkScreen(int value) {
    pageIndex = value;
    update(['indicator']);
  }
}
