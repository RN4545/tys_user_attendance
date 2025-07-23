import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tys_user_attendance/app/customWidget/customCheckInCheckOutBox.dart';
import 'package:tys_user_attendance/app/customWidget/customCircle.dart';
import 'package:tys_user_attendance/app/customWidget/customElevatedButton.dart';
import 'package:tys_user_attendance/app/customWidget/customOutlineButton.dart';
import 'package:tys_user_attendance/app/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _infoUser(context),
          const SizedBox(
            height: 60.0,
          ),
          _userOfficeHours(),
        ],
      ),
    );
  }

  Widget _infoUser(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font20,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(
                  text: "Welcome, ",
                  style: TextStyle(color: Colors.amber),
                ),
                TextSpan(
                  text: "Jack",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            "UI/UX Intern",
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            "09:30",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: font18),
          ),
          Text(
            "Monday | July 03",
            style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font14,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 70.0,
          ),
          InkWell(
            onTap: () {
              showClockOutDialog(context);
              // showOnTimeDialog(context);
              // showDialog(
              //   context: context,
              //   barrierDismissible: false,
              //   builder: (context) => _onTimeLogIn(context),
              // );
            },
            child: CustomCircle(
              size: 180.0,
              circleColor: Colors.red,
              image: const AssetImage(
                'assets/images/white_finger_up.png',
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.amber.shade400,
                  Colors.amber.shade700,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              text: "Clock in",
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "You are 1 meter away from office",
            style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font12,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Vashi-Navi Mumbai",
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _userOfficeHours() {
    return CustomCheckInCheckOutBox();
  }

  void showOnTimeDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => _onTimeLogIn(context),
    );

    Future.delayed(const Duration(seconds: 2), () {
      if (Get.isDialogOpen ?? false) {
        Get.back();
      }
    });
  }

  void showClockOutDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => _readyToClockOut(context),
    );

    Future.delayed(const Duration(seconds: 2), () {
      if (Get.isDialogOpen ?? false) {
        Get.back();
      }
    });
  }

  Widget _onTimeLogIn(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration



                (
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.green, width: 1.5)),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.check_circle, color: Colors.green, size: 48),
                  const SizedBox(height: 12.0),
                  Text(
                    'You Are On Time!',
                    style: Get.textTheme.bodyLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Clock in time: 09:16 AM',
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: font12,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _lateMark() {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: Colors.red),
              ),
              child: Column(
                children: [
                  const Icon(Icons.check_circle,
                      color: Colors.green, size: 48.0),
                  const SizedBox(height: 12.0),
                  Text(
                    "Oops, You Are Late!",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: font18,
                    ),
                  ),
                  Text(
                    "Clock in time:10:05 AM",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: font18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _readyToClockOut(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.amber, width: 1.5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 24),
                Text(
                  'Ready to clock out?',
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "You've completed 9 hrs today",
                  style: Get.textTheme.bodyMedium!.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 2),
                Text(
                  "Total time: 09:02 hrs",
                  style: Get.textTheme.bodySmall!.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 16),
                const Divider(height: 1),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Cancel",
                            style: Get.textTheme.bodyMedium!.copyWith(
                              fontSize: font16,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFE08C),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16.0),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Yes",
                            style: Get.textTheme.bodyMedium!.copyWith(
                              fontSize: font16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
