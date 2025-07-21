import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_resources_module/screen_resources_controller.dart';

class ScreenResourcesBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenResourcesController(),
    );
  }
}
