import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tys_user_attendance/app/shared/init.dart';
import 'package:tys_user_attendance/app/theme/app_theme.dart';
import 'app/routes/route_names.dart';
import 'app/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() async => Init());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InAppNotification(
      child: GetMaterialApp(

        debugShowCheckedModeBanner: false,
        theme: AppColor.pickTimeTheme(),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        builder: (context, child) {
          return SafeArea(child: child ?? const SizedBox());
        },
      ),
    );
  }
}

