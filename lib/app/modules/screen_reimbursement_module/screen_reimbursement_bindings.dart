import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_reimbursement_module/screen_reimbursement_controller.dart';

class ScreenReimbursementBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenReimbursementController(),
    );
  }
}
