import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customOutlineButton.dart';
import 'package:tys_user_attendance/app/customWidget/customProfile.dart';
import 'package:tys_user_attendance/app/modules/screen_profile_module/screen_profile_controller.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../shared/init.dart';

class ScreenProfile extends GetView<ScreenProfileController> {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Profile",
            style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font18,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        ),
      ),
      body: _body(),
      bottomNavigationBar: _bottomSocialIcons(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _profilePhoto(),
            const SizedBox(
              height: 10.0,
            ),
            _employeeAccount(),
            const SizedBox(
              height: 10.0,
            ),
            _settings(),
          ],
        ),
      ),
    );
  }

  Widget _profilePhoto() {
    return const Center(
      child: CustomProfile(
        employeeName: "Jack Brown",
        employeePosition: "UI/UX Intern",
      ),
    );
  }

  Widget _employeeAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "My Account",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3, // Increased to make items narrower
            crossAxisSpacing: 8.0, // Reduced spacing
            mainAxisSpacing: 8.0, // Reduced spacing
          ),
          itemCount: controller.employeeDetails.length,
          itemBuilder: (context, index) {
            final item = controller.employeeDetails[index];
            return InkWell(
              onTap: () {
                Init.instance.selectedTitle.value = item.title ?? "";
                Get.log(
                    "Selected value : ${Init.instance.selectedTitle.value}");
                if (Init.instance.selectedTitle.value == "Id Card") {
                  Get.toNamed(RouteNames.screenIdCard);
                }
              },
              child: Container(
                padding: const EdgeInsets.all(12.0), // Reduced padding
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 1.0,
                      color: Colors.grey,
                      offset: Offset(0.5, 0.3),
                      spreadRadius: 0.3,
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                      6), // Slightly smaller border radius
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      item.imageString ?? "",
                      height: 20.0, // Reduced image size
                      width: 20.0,
                    ),
                    const SizedBox(
                      height: 8.0, // Reduced spacing
                    ),
                    Text(
                      item.title ?? "",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: font10,
                        color: const Color.fromRGBO(191, 152, 63, 2),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }

  Widget _settings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Settings",
          style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font12,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.1,
                    offset: Offset(0.1, 0.1),
                    blurRadius: 1.8,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.notifications_none,
                    color: Color.fromRGBO(191, 152, 63, 2),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Notifications",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: font12,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(191, 152, 63, 2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.1,
                      offset: Offset(0.1, 0.1),
                      blurRadius: 1.8,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/switch.png',
                    height: 24.0,
                    width: 24.0,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Display Mode",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: font12,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(191, 152, 63, 2),
                    ),
                  ),
                ],
              ),
            )
            // Expanded(
            //   child: CustomOutlinedButton(
            //     prefixWidget: Image.asset(
            //       'assets/images/bell.png',
            //       height: 30.0,
            //       width: 30.0,
            //     ),                btnSize: const Size(double.infinity, 46.0),
            //     // btnSize: const Size.fromHeight(46.0),
            //     btnText: "Notifications",
            //     onPressed: () {},
            //     fontSize: font16,
            //   ),
            // ),
            // const SizedBox(
            //   width: 10.0,
            // ),
            // Expanded(
            //   child: CustomOutlinedButton(
            //     prefixWidget: Image.asset(
            //       'assets/images/switch.png',
            //       height: 30.0,
            //       width: 30.0,
            //     ),
            //     btnSize: const Size(double.infinity, 46.0),
            //     // btnSize: const Size.fromHeight(46.0),
            //     btnText: "Display Mode",
            //     txtColor: Colors.amber,
            //
            //     onPressed: () {},
            //     fontSize: font16,
            //   ),
            // ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.1,
                offset: Offset(0.1, 0.1),
                blurRadius: 1.8,
              ),
            ],
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.logout,
                color: Color.fromRGBO(191, 152, 63, 2),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "Logout",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: font12,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(191, 152, 63, 2),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 24.0,
                color: Color.fromRGBO(191, 152, 63, 2),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bottomSocialIcons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "FOLLOW US ON",
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font12,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/instagram.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/linkedin.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/facebook.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/twitter.png',
                height: 20,
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
