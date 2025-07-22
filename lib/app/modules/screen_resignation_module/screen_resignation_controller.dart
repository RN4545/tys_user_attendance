import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenResignationController extends GetxController {
  final emailCtrl = TextEditingController();
  final dateCtrl = TextEditingController();
  final resignationLateDate = TextEditingController();
  final reasonCtrl = TextEditingController();

//focus nodes
  final emailFocus = FocusNode();
  final dateFocus = FocusNode();
  final resignationLateFocus = FocusNode();
  final reasonFocus = FocusNode();

  final emailColor = Rx<Color>(Colors.white);
  final dateColor = Rx<Color>(Colors.white);
  final resignationLateColor = Rx<Color>(Colors.white);
  final reasonColor = Rx<Color>(Colors.white);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _listenFocus(emailFocus, emailColor);
    _listenFocus(dateFocus, dateColor);
    _listenFocus(resignationLateFocus, resignationLateColor);
    _listenFocus(reasonFocus, reasonColor);
  }

  void _listenFocus(FocusNode node, Rx<Color> color) {
    node.addListener(() {
      color.value = node.hasFocus ? Colors.yellow.shade100 : Colors.white;
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailCtrl.dispose();
    dateCtrl.dispose();
    resignationLateDate.dispose();
    reasonCtrl.dispose();
    emailFocus.dispose();
    dateFocus.dispose();
    resignationLateFocus.dispose();
    reasonFocus.dispose();
  }
}
