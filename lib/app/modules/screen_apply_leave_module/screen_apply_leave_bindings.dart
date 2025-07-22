import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_apply_leave_module/screen_apply_leave_controller.dart';

class ScreenApplyLeaveBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenApplyLeaveController(),
    );
  }
}
