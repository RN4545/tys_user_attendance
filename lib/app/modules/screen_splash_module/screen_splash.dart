import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/splash_services.dart';
class ScreenSplash extends StatelessWidget {
   ScreenSplash({super.key});
  final SplashService _splashServices = SplashService();

  @override
  Widget build(BuildContext context) {
    // Start the timer when the screen is built
    _splashServices.isLogin(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace this with your logo or splash animation
            Image.asset(
              'assets/images/tys_new_logo.png',
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // optional loading indicator
          ],
        ),
      ),
    );
  }
}
