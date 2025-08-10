import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_professional_info/screen_professional_info_controller.dart';

class ScreenProfessionalInfoBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenProfessionalInfoController());
  }
}
