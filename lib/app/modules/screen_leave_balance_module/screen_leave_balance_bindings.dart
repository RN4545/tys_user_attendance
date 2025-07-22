import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_leave_balance_module/screen_leave_balance.dart';
import 'package:tys_user_attendance/app/modules/screen_leave_balance_module/screen_leave_balance_controller.dart';
class ScreenLeaveBalanceBindings implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ScreenLeaveBalanceController(),);
  }

}