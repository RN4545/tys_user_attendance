import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_home_module/screen_home_controller.dart';

class ScreenHomeBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenHomeController(),
    );
  }
}
