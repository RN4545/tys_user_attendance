import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_personal_info/screen_personal_info_controller.dart';

class ScreenPersonalInfoBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScreenPersonalInfoController(),
    );
  }
}
