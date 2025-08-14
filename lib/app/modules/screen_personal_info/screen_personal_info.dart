import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../routes/route_names.dart';
import '../../shared/init.dart';

class ScreenPersonalInfo extends StatelessWidget {
  const ScreenPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font18, fontWeight: FontWeight.bold),
        ),
      ),
      body: _body(),
    );
  }
  Widget _body(){
    return Padding(padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        _personalInfo()
      ],
    ),
    );
  }
  Widget _personalInfo(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "My Account",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font12, color: Colors.black54),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.yellow.shade50,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0.2, 0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                  color: Colors.grey.shade300),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/profile_icon.png",
                    width: 20.0,
                    height: 20.0,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Personal Details",
                    style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: font12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.amber,
              ),
              Text(
                "Date of Birth",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: font10, color: Colors.grey),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() {
                    return Text(
                      Init.instance.designationName.value,
                      // "UI/UX Intern",
                      // "jackbrown@gmail.com",
                      // Init.instance.emailContact.value,
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: font12, fontWeight: FontWeight.bold),
                    );
                  }),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteNames.screenProfessionalInfoEdit);
                    },
                    child: Image.asset(
                      "assets/images/edit_icon.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.amber,
              ),
              Text(
                "Gender",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: font10, color: Colors.grey),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() {
                    return Text(
                      Init.instance.totalExp.value,
                      // "0 Years 0 Months",
                      // Init.instance.mobileContact.value,
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: font12, fontWeight: FontWeight.bold),
                    );
                  }),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteNames.screenProfessionalInfoEdit);
                    },
                    child: Image.asset(
                      "assets/images/edit_icon.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.amber,
              ),
              Text(
                "Blood Group",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: font10, color: Colors.grey),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() {
                    return Text(
                      Init.instance.skillName.value,
                      // Init.instance.mobileContact.value,
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: font12, fontWeight: FontWeight.bold),
                    );
                  }),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteNames.screenProfessionalInfoEdit);
                    },
                    child: Image.asset(
                      "assets/images/edit_icon.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.amber,
              ),
              Text(
                "Personal Email",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: font10, color: Colors.grey),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() {
                    return Text(
                      Init.instance.joinDate.value,

                      // Init.instance.mobileContact.value,
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: font12, fontWeight: FontWeight.bold),
                    );
                  }),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteNames.screenProfessionalInfoEdit);
                    },
                    child: Image.asset(
                      "assets/images/edit_icon.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.amber,
              ),
              Text(
                "Address",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: font10, color: Colors.grey),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() {
                    return Text(
                      Init.instance.expInTYS.value,

                      // Init.instance.mobileContact.value,
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: font12, fontWeight: FontWeight.bold),
                    );
                  }),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteNames.screenProfessionalInfoEdit);
                    },
                    child: Image.asset(
                      "assets/images/edit_icon.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
