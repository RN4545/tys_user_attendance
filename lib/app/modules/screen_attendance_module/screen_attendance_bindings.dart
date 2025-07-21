import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_attendance_module/screen_attendance_controller.dart';

class ScreenAttendanceBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ScreenAttendanceController(),
    );
  }
}
