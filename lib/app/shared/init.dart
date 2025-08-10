import 'package:get/get.dart';
import 'package:tys_user_attendance/app/data/pojo/itemPojo.dart';

class Init extends GetxService {
  static Init get instance => Get.find<Init>();
  var selectedTitle = ''.obs;
  var emailContact = ''.obs;
  var mobileContact = ''.obs;
  var designationName = ''.obs;
  var totalExp = ''.obs;
  var skillName = ''.obs;
  var joinDate = ''.obs;
  var expInTYS = ''.obs;
}
