import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_splash_module/screen_splash_controller.dart';

class ScreenSplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScreenSplashController(),
    );
  }
}
