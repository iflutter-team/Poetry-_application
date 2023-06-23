import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileScreenController extends GetxController {
  File? file;
  imagePickerCondition() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);
    update(['imagePickerProfileScreen']);
  }
}
