import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenContactInfoEditController extends GetxController {
  var emailCtrl = TextEditingController();
  var mobileContactCtrl = TextEditingController();
  var borderColor = Rx<Color>(Colors.grey);

  void borderColorChange(Color borderColorNew) {
    borderColor.value = borderColorNew;
  }
}
