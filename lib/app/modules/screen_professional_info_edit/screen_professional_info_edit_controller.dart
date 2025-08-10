import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenProfessionalInfoEditController extends GetxController {
  var designationCtrl = TextEditingController();
  var totalExpCtrl = TextEditingController();
  var skillsCtrl = TextEditingController();
  var joinDateCtrl = TextEditingController();
  var experienceTYSCtrl = TextEditingController();
  var borderColor = Rx<Color>(Colors.grey);

  void borderColorChange(Color borderColorNew) {
    borderColor.value = borderColorNew;
  }
}
