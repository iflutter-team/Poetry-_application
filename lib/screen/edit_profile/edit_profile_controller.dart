import 'package:flutter/material.dart';
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


  TextEditingController dateController = TextEditingController();
  DateTime? date;
  DateTime? month;
  void dateAndTimePicker(BuildContext context) async {
    date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2001),
      lastDate: DateTime(2024, 3, 14),
    );
    dateController.text = date!.day.toString() +
          '/' +
          date!.month.toString() +
          '/' +
          date!.year.toString();
    update(['dateAndTimePicker']);
  }
}
