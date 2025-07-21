import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/theme/app_theme.dart';
import 'app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppColor.pickTimeTheme(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

      builder: (context, child) {
        return SafeArea(
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
