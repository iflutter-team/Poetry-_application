import 'package:get/get.dart';
import 'package:poetry/screen/timeismotherbook_screen/timeismotherbook_screen.dart';

class FamousBookController extends GetxController {
  void famousBookCondition() {
    Get.to(const TimeIsMotherScreen());
  }
}
