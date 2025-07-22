import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_holiday_module/screen_holiday_controller.dart';

class ScreenHolidayBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenHolidayController(),
    );
  }
}
