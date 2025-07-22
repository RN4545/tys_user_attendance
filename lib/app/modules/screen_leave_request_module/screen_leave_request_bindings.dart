import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_leave_request_module/screen_leave_request_controller.dart';

class ScreenLeaveRequestBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenLeaveRequestController(),
    );
  }
}
