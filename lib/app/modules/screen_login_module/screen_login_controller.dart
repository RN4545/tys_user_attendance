import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/data/pojo/login_pojo.dart';
import 'package:tys_user_attendance/app/data/repository/auth_repo.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';

class ScreenLoginController extends GetxController {
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();

  var isLoading = false.obs;
  final AuthRepo _authRepo = AuthRepo();

  //login function
  Future<void> loginUser() async {
    isLoading.value = true;
    try {
      final email = emailCtrl.text.trim();
      final pass = passCtrl.text;

      final LoginPojo response =
          await _authRepo.loginUser(email: email, password: pass);
      if (response.success == true && response.data?.token != null) {
        Get.snackbar("Success", response.message ?? "Login Success");
        Get.offAllNamed(RouteNames.home);
      } else {
        Get.snackbar("Failed", response.message ?? "Login Failed");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    emailCtrl.dispose();
    passCtrl.dispose();
    super.onClose();
  }
}
