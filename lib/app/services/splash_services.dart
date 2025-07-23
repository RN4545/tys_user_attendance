import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/route_names.dart';

class SplashService {
  void isLogin(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    Timer(
      const Duration(seconds: 2),
          () {
        if (token != null && token.isNotEmpty) {
          Get.offAllNamed(RouteNames.home);
        } else {
          Get.offAllNamed(RouteNames.login);
        }
      },
    );
  }
}
