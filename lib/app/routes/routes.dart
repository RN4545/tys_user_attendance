import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/bottom_navigation_bar_module/bottom_navigation_bar.dart';
import 'package:tys_user_attendance/app/modules/screen_apply_leave_module/screen_apply_leave.dart';
import 'package:tys_user_attendance/app/modules/screen_apply_leave_module/screen_apply_leave_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_attendance_module/screen_attendance.dart';
import 'package:tys_user_attendance/app/modules/screen_attendance_module/screen_attendance_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_contact_info_edit/screen_contact_info_edit_controller.dart';
import 'package:tys_user_attendance/app/modules/screen_contact_information/screen_contact_information.dart';
import 'package:tys_user_attendance/app/modules/screen_contact_information/screen_contact_information_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_holiday_module/screen_holiday_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_home_module/screen_home.dart';
import 'package:tys_user_attendance/app/modules/screen_id_card_module/screen_id_card.dart';
import 'package:tys_user_attendance/app/modules/screen_id_card_module/screen_id_card_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_leave_request_module/screen_leave_request.dart';
import 'package:tys_user_attendance/app/modules/screen_leave_request_module/screen_leave_request_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_login_module/screen_login.dart';
import 'package:tys_user_attendance/app/modules/screen_professional_info/screen_professional_info_bindigs.dart';
import 'package:tys_user_attendance/app/modules/screen_professional_info_edit/screen_professional_info_edit.dart';
import 'package:tys_user_attendance/app/modules/screen_profile_module/screen_profile_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_regularize_module/screen_regularize.dart';
import 'package:tys_user_attendance/app/modules/screen_regularize_module/screen_regularize_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_reimbursement_module/screen_reimbursement_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_resignation_module/screen_resignation_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_resources_module/screen_resources.dart';
import 'package:tys_user_attendance/app/modules/screen_resources_module/screen_resources_bindings.dart';
import 'package:tys_user_attendance/app/modules/screen_splash_module/screen_splash.dart';
import 'package:tys_user_attendance/app/modules/screen_splash_module/screen_splash_bindings.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';

import '../modules/screen_contact_info_edit/screen_contact_info_edit.dart';
import '../modules/screen_contact_info_edit/screen_contact_info_edit_bindings.dart';
import '../modules/screen_holiday_module/screen_holiday.dart';
import '../modules/screen_home_module/screen_home_bindings.dart';
import '../modules/screen_leave_balance_module/screen_leave_balance.dart';
import '../modules/screen_leave_balance_module/screen_leave_balance_bindings.dart';
import '../modules/screen_login_module/screen_login_bindings.dart';
import '../modules/screen_professional_info/screen_professional_info.dart';
import '../modules/screen_professional_info_edit/screen_professional_info_edit_bindings.dart';
import '../modules/screen_profile_module/screen_profile.dart';
import '../modules/screen_reimbursement_module/screen_reimbursement.dart';
import '../modules/screen_resignation_module/screen_resignation.dart';

class AppPages {
  static const INITIAL = RouteNames.splash;

  static final routes = [
    GetPage(
      name: RouteNames.login,
      page: () => const ScreenLogin(),
      binding: ScreenLoginBindings(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => MainScreen(),
      binding: ScreenHomeBindings(),
    ),
    GetPage(
      name: RouteNames.attendance,
      page: () => const ScreenAttendance(),
      binding: ScreenAttendanceBindings(),
    ),
    GetPage(
      name: RouteNames.resources,
      page: () => const ScreenResources(),
      binding: ScreenResourcesBindings(),
    ),
    GetPage(
      name: RouteNames.reimbursement,
      page: () => const ScreenReimbursement(),
      binding: ScreenReimbursementBindings(),
    ),
    GetPage(
      name: RouteNames.leaveRequest,
      page: () => const ScreenLeaveRequest(),
      binding: ScreenLeaveRequestBindings(),
    ),
    GetPage(
      name: RouteNames.applyLeaveRequest,
      page: () => const ScreenApplyLeave(),
      binding: ScreenApplyLeaveBindings(),
    ),
    GetPage(
      name: RouteNames.leaveBalance,
      page: () => const ScreenLeaveBalance(),
      binding: ScreenLeaveBalanceBindings(),
    ),
    GetPage(
      name: RouteNames.resignation,
      page: () => const ScreenResignation(),
      binding: ScreenResignationBindings(),
    ),
    GetPage(
      name: RouteNames.listOfHolidays,
      page: () => const ScreenHoliday(),
      binding: ScreenHolidayBindings(),
    ),
    GetPage(
      name: RouteNames.profile,
      page: () => const ScreenProfile(),
      binding: ScreenProfileBindings(),
    ),
    GetPage(
      name: RouteNames.screenIdCard,
      page: () => const ScreenIdCard(),
      binding: ScreenIdCardBindings(),
    ),
    GetPage(
      name: RouteNames.screenIdCard,
      page: () => const ScreenIdCard(),
      binding: ScreenIdCardBindings(),
    ),
    GetPage(
      name: RouteNames.splash,
      page: () => ScreenSplash(),
      binding: ScreenSplashBindings(),
    ),
    GetPage(
        name: RouteNames.screenRegularize,
        page: () => const ScreenRegularize(),
        binding: ScreenRegularizeBindings()),
    GetPage(
        name: RouteNames.screenContactInfo,
        page: () => const ScreenContactInformation(),
        binding: ScreenContactInformationBindings()),
    GetPage(
        name: RouteNames.screenContactInfoEdit,
        page: () => const ScreenContactInfoEdit(),
        binding: ScreenContactInfoEditBindings()),
    GetPage(
        name: RouteNames.screenProfessionalInfo,
        page: () => const ScreenProfessionalInfo(),
        binding: ScreenProfessionalInfoBindings()),
    GetPage(
        name: RouteNames.screenProfessionalInfoEdit,
        page: () => const ScreenProfessionalInfoEdit(),
        binding: ScreenProfessionalInfoEditBindings()),
  ];
}
