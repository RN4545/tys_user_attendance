import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_login_module/screen_login_controller.dart';

class ScreenLoginBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenLoginController(),
    );
  }
}
