import 'package:get/get.dart';

import '../poem/poem_screen.dart';

class ViewController extends GetxController {
  void topPoem() {
    Get.to(const PoemScreen());
  }
}
