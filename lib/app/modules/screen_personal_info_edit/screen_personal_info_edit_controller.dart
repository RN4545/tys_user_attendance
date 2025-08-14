import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenPersonalInfoEditController extends GetxController{
var dobCtrl = TextEditingController();
var genderCtrl = TextEditingController();
var bloodGroupCtrl = TextEditingController();
var personalEmailCtrl = TextEditingController();
var addressCtrl = TextEditingController();
var borderColor = Rx<Color>(Colors.grey);

void borderColorChange(Color borderColorNew) {
  borderColor.value = borderColorNew;
}
}