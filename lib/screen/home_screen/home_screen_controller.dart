import 'package:get/get.dart';
import 'package:poetry/screen/famousbook_screen/famousbook_screen.dart';
import 'package:poetry/screen/view_screen/view_screen.dart';

import '../../utils/asset_res.dart';

class HomeScreenController extends GetxController {
  bool switchDemo = true;
  bool selected = false;
  int pageIndex = 0;
  int index = 0;
  bool containerSwitch=false;
  String english = "English";
  String hindi = "Hindi";
  String? gp = "English";

  void switchWidget(value) {
    switchDemo = value;
    update(['switch']);
  }

  void menuContainer() {
    selected = !selected;
    update(['animatedContainer']);
  }

  List carouselSliderdList = [
    AssetRes.carouselSliderdImage,
    AssetRes.carouselSliderdImage,
    AssetRes.carouselSliderdImage,
  ];

  void carouselSliderCondition(value, reason) {
    pageIndex = value;
    update(['PageView']);
  }

  void viewAllCondition(){
    Get.to(const ViewScreen());
  }

  void famousBookCondition(){
    Get.to(FamousBook());
  }

  void gestureDetectorCondition(){
        selected = false;
        update(['animatedContainer']);
  }

  void animatedContainerCondition(val){
    containerSwitch=val;
    update(['animatedContainer']);
  }

  void languageCondition(val){
    gp = val.toString();
    update(['radiobutton']);
  }
}
