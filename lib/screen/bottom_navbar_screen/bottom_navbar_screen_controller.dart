import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/addpoem_screen/addpoem_screen.dart';
import 'package:poetry/screen/bookmark_screen/bookmark_screen.dart';
import 'package:poetry/screen/home_screen/home_screen.dart';
import 'package:poetry/screen/notification/notification_screen.dart';
import 'package:poetry/screen/profile_screen/profile_screen.dart';

class BottomNavBarController extends GetxController {
  int selectedIndex = 0;
  List<Widget> screen = [
    const HomeScreen(),
    const BookmarkScreen(),
    const AddPoemScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  void onTapBack(){
    selectedIndex= 0;
    update(['navigationBar']);
  }


  void onTapBottom(int index) {
    selectedIndex = index;
    update(['navigationBar']);
  }
}
