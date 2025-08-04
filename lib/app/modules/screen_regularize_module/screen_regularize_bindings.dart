import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_regularize_module/screen_regularize_controller.dart';

class ScreenRegularizeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScreenRegularizeController(),
    );
  }
}
