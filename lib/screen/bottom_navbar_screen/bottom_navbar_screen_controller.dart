import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  int selectedIndex = 0;

  void onTapBottom(int index) {
    selectedIndex = index;
    update(['navigationBar']);
  }
}
