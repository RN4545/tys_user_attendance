import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_professional_info_edit/screen_professional_info_edit_controller.dart';

class ScreenProfessionalInfoEditBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScreenProfessionalInfoEditController(),
    );
  }
}
