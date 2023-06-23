import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class EditProfileController extends GetxController {
  saveButton() {
    Get.back();
  }
  File? file;
  imagePickerCondition() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);
    update(['imagePicker']);
  }
}
