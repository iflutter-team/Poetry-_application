import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_container.dart';

import '../../common/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import 'bookmark_screen_controller.dart';
import 'bookmark_screen_widget.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(BookmarkScreenController());
    return Scaffold(
        backgroundColor: ColorRes.greenColor,
        appBar: commonAppbar(
          color: ColorRes.greenColor,
          backgroundColor: ColorRes.whiteColor,
          context,
          title: StringRes.bookmark,
          leadingIcon: Icons.arrow_back_sharp,
          actionIcon: Icons.favorite,
        ),
        body: Column(
          children: [
            pageViewOfBookmarkScreen(),
            pageViewOfBookmark(),
            commonContainer(height: 80)
          ],
        ));
  }
}
