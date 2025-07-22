import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_resignation_module/screen_resignation_controller.dart';
import 'package:flutter/material.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../customWidget/customElevatedButton.dart';
import '../../customWidget/customTxtFiledNew.dart';

class ScreenResignation extends GetView<ScreenResignationController> {
  const ScreenResignation({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Resignation",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font18, fontWeight: FontWeight.bold),
          ),
        ),
        body: _body(),
        bottomNavigationBar: _submitButton(),
      );
    });
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [_resignForm()],
        ),
      ),
    );
  }

  Widget _resignForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            "Email",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          focusNode: controller.emailFocus,
          fillColor: controller.emailColor.value,
          controller: controller.emailCtrl,
          hintText: "jackbrown@gmail.com",
          hintTextStyle: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font12,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            "Apply Date",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          focusNode: controller.dateFocus,
          fillColor: controller.dateColor.value,
          controller: controller.dateCtrl,
          hintText: "Select Date",
          hintTextStyle: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font12,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            "Resignation Late Date",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          fillColor: controller.resignationLateColor.value,
          focusNode: controller.resignationLateFocus,
          controller: controller.resignationLateDate,
          hintText: "Select Date",
          suffix: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today),
          ),
          hintTextStyle: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font12,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            "Reason",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          focusNode: controller.reasonFocus,
          fillColor: controller.reasonColor.value,
          controller: controller.reasonCtrl,
          hintText: "texttexts",
          maxLines: 3,
          hintTextStyle: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font12,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  Widget _submitButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomElevatedButton(
        fontSize: font16,
        onTap: () {
          Get.back();
          // Get.toNamed(RouteNames.applyLeaveRequest);
        },
        borderRadius: BorderRadius.circular(10.0),
        btnText: "Submit",
        primaryColor: Colors.amber,
        btnSize: const Size(double.infinity, 46.0),
      ),
    );
  }

}
