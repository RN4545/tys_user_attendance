import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_contact_info_edit/screen_contact_info_edit_controller.dart';

class ScreenContactInfoEditBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScreenContactInfoEditController(),
    );
  }
}
