import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/bottom_navigation_bar_module/bottom_navigation_bar.dart';
import 'package:tys_user_attendance/app/modules/screen_attendance_module/screen_attendance.dart';
import 'package:tys_user_attendance/app/modules/screen_attendance_module/screen_attendance_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_home_module/screen_home.dart';
import 'package:tys_user_attendance/app/modules/screen_login_module/screen_login.dart';
import 'package:tys_user_attendance/app/modules/screen_reimbursement_module/screen_reimbursement_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_resources_module/screen_resources.dart';
import 'package:tys_user_attendance/app/modules/screen_resources_module/screen_resources_bindings.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';

import '../modules/screen_home_module/screen_home_bindings.dart';
import '../modules/screen_login_module/screen_login_bindings.dart';
import '../modules/screen_reimbursement_module/screen_reimbursement.dart';

class AppPages {
  static const INITIAL = RouteNames.login;

  static final routes = [
    GetPage(
      name: RouteNames.login,
      page: () => const ScreenLogin(),
      binding: ScreenLoginBindings(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () =>  MainScreen(),
      binding: ScreenHomeBindings(),
    ),
    GetPage(
      name: RouteNames.attendance,
      page: () =>  ScreenAttendance(),
      binding: ScreenAttendanceBindings(),
    ),
    GetPage(
      name: RouteNames.resources,
      page: () =>  ScreenResources(),
      binding: ScreenResourcesBindings(),
    ),
    GetPage(
      name: RouteNames.reimbursement,
      page: () =>  ScreenReimbursement(),
      binding: ScreenReimbursementBindings(),
    ),
  ];
}

