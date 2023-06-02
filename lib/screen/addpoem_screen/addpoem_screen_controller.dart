import 'package:get/get.dart';

class AddPoemController extends GetxController {
  String? gender;

  void dropDownButtonCondition(val) {
    gender = val.toString();
    update(['dropDownButton']);
  }
  void saveButton(){

  }
}
