import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileScreenController extends GetxController {
  File? file;
  bool selected = false;
  imagePickerCondition() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);
    update(['imagePickerProfileScreen']);
  }
  void shutter() {
    selected = !selected;
    update(['animatedContainer']);
  }
  void gestureDetectorCondition(){
    selected = false;
    update(['animatedContainer']);
  }

}
