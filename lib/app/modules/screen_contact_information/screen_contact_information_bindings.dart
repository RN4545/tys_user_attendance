import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_contact_information/screen_contact_information_controller.dart';

class ScreenContactInformationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScreenContactInformationController(),
    );
  }
}
