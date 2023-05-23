import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  int index = 0;
  void homeScreenIcon() {
    index = 0;
    update(['homeScreenIcon']);
  }

  void bookmarkIcon() {
    index = 1;
    update(['bookmarkIcon']);
  }

  void addpoemIcon() {
    index = 2;
    update(['addpoemIcon']);
  }

  void notificationIcon() {
    index = 3;
    update(['notificationIcon']);
  }

  void profileIcon() {
    index = 4;
    update(['profileIcon']);
  }
}
