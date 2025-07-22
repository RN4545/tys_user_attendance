import 'package:flutter/material.dart';
import 'package:tys_user_attendance/app/customWidget/customContainer.dart';
import 'package:tys_user_attendance/app/modules/screen_resources_module/screen_resources_controller.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';
import 'package:tys_user_attendance/app/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class ScreenResources extends GetView<ScreenResourcesController> {
  const ScreenResources({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Resources",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: AppColor.whiteColor,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(36.0),
      child: Column(
        children: [
          _resources(context),
        ],
      ),
    );
  }

  Widget _resources(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          imageIcon: const AssetImage('assets/images/reimbursement.png'),
          text: "Reimbursement",
          color: Colors.brown,
          subText: "Submit expense",
          arrowIcon: Icons.arrow_forward_rounded,
          onTap: () {
            // Navigator.of(context).pushNamed('/details'); // ✅ this works inside nested nav

            // Get.toNamed('/reimbursement', id:1);
            Get.toNamed(RouteNames.reimbursement);
            Get.log("reimbursement tap");
          },
        ),
        const SizedBox(
          height: 18.0,
        ),
        CustomContainer(
          imageIcon: const AssetImage('assets/images/leave_request.png'),
          text: "Leave Request",
          color: Colors.brown,
          subText: "Apply leave",
          arrowIcon: Icons.arrow_forward_rounded,
          onTap: () {
            Get.toNamed(RouteNames.leaveRequest);

            Get.log("leave req tap");
          },
        ),
        const SizedBox(
          height: 18.0,
        ),
        CustomContainer(
          imageIcon: const AssetImage('assets/images/resign.png'),
          text: "Resignation",
          color: Colors.brown,
          subText: "Apply Resignation",
          arrowIcon: Icons.arrow_forward_rounded,
          onTap: () {
            Get.toNamed(RouteNames.resignation);
            Get.log("resignation tap");
          },
        ),
        const SizedBox(
          height: 18.0,
        ),
        CustomContainer(
          imageIcon: const AssetImage('assets/images/holiday.png'),
          text: "Holiday List",
          color: Colors.brown,
          subText: "View Upcoming holidays",
          arrowIcon: Icons.arrow_forward_sharp,
          onTap: () {
            Get.toNamed(RouteNames.listOfHolidays);
            Get.log("holiday tap");
          },
        ),
      ],
    );
  }
}
