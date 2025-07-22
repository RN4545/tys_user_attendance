import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenReimbursementController extends GetxController {
  // Text controllers
  final expenseCategoryCtrl = TextEditingController();
  final vendorNameCompanyCtrl = TextEditingController();
  final amtCtrl = TextEditingController();
  final upiIdCtrl = TextEditingController();
  final commentCtrl = TextEditingController();

  // Focus nodes
  final expenseCategoryFocus = FocusNode();
  final vendorNameFocus = FocusNode();
  final amtFocus = FocusNode();
  final upiIdFocus = FocusNode();
  final commentFocus = FocusNode();

  // Colors
  final expenseCategoryColor = Rx<Color>(Colors.white);
  final vendorNameColor = Rx<Color>(Colors.white);
  final amtColor = Rx<Color>(Colors.white);
  final upiIdColor = Rx<Color>(Colors.white);
  final commentColor = Rx<Color>(Colors.white);

  @override
  void onInit() {
    super.onInit();
    _listenFocus(expenseCategoryFocus, expenseCategoryColor);
    _listenFocus(vendorNameFocus, vendorNameColor);
    _listenFocus(amtFocus, amtColor);
    _listenFocus(upiIdFocus, upiIdColor);
    _listenFocus(commentFocus, commentColor);
  }

  void _listenFocus(FocusNode node, Rx<Color> color) {
    node.addListener(() {
      color.value = node.hasFocus ? Colors.yellow.shade100 : Colors.white;
    });
  }

  @override
  void onClose() {
    expenseCategoryCtrl.dispose();
    vendorNameCompanyCtrl.dispose();
    amtCtrl.dispose();
    upiIdCtrl.dispose();
    commentCtrl.dispose();

    expenseCategoryFocus.dispose();
    vendorNameFocus.dispose();
    amtFocus.dispose();
    upiIdFocus.dispose();
    commentFocus.dispose();
    super.onClose();
  }
}
