import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_id_card_module/screen_id_card_controller.dart';
class ScreenIdCardBindings implements  Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ScreenIdCardController(),);
  }

}