import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_personal_info_edit/screen_personal_info_edit_controller.dart';

class ScreenPersonalInfoEditBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScreenPersonalInfoEditController(),
    );
  }
}
