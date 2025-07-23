import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tys_user_attendance/app/customWidget/customElevatedButton.dart';
import 'package:tys_user_attendance/app/modules/screen_login_module/screen_login_controller.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';
import 'package:tys_user_attendance/app/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';
import '../../customWidget/customTextfield.dart';

class ScreenLogin extends GetView<ScreenLoginController> {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _loginForm(context),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _logo(),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _logo() {
    return const Center(
      child: Image(
        height: 220.0,
        width: 220.0,
        image: AssetImage('assets/images/tys_new_logo.png'),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    final height = MediaQuery
        .sizeOf(context)
        .height;
    return Container(
      height: height * 0.7,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.yellow.shade50,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: SingleChildScrollView(
        // So it won't overflow on small screens or keyboard open
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 4),
              child: Text('Username'),
            ),
            CustomTextField(
              fontSize: font14,
              controller: controller.emailCtrl,
              hintText: "Enter your work email",
              hintTextStyle: GoogleFonts.poppins(
                fontSize: font14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 4),
              child: Text("Password"),
            ),
            CustomTextField(
              fontSize: font14,
              controller: controller.passCtrl,
              hintText: "8 digit password",
              hintTextStyle: GoogleFonts.poppins(
                fontSize: font14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30.0),
            Obx(() {
              if (controller.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return CustomElevatedButton(
                  onTap: () async {
                    await controller.loginUser();
                  },
                  btnText: "Login",
                  btnSize: const Size(double.infinity, 45.0),
                  borderRadius: BorderRadius.circular(20.0),
                  fontSize: font18,
                  txtColor: Colors.white,
                  primaryColor: Colors.amber,
                );
              }
            }),

            const SizedBox(height: 190.0),
            _bottomSocialIcons(),
          ],
        ),
      ),
    );
  }

  Widget _bottomSocialIcons() {
    return Column(
      children: [
        Text(
          "FOLLOW US ON",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font14,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 24,
              width: 24,
              image: AssetImage('assets/images/instagram.png'),
            ),
            SizedBox(width: 16),
            Image(
              height: 24,
              width: 24,
              image: AssetImage('assets/images/linkedin.png'),
            ),
            SizedBox(width: 16),
            Image(
              height: 24,
              width: 24,
              image: AssetImage('assets/images/facebook.png'),
            ),
            SizedBox(width: 16),
            Image(
              height: 24,
              width: 24,
              image: AssetImage('assets/images/twitter.png'),
            ),
          ],
        ),
      ],
    );
  }
}
