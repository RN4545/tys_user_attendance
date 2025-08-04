import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customContainerBox.dart';
import 'package:tys_user_attendance/app/customWidget/customElevatedButton.dart';
import 'package:tys_user_attendance/app/customWidget/customTextfield.dart';
import 'package:tys_user_attendance/app/customWidget/customTxtFiledNew.dart';
import 'package:tys_user_attendance/app/modules/screen_regularize_module/screen_regularize_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class ScreenRegularize extends GetView<ScreenRegularizeController> {
  const ScreenRegularize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Regularize",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font18, fontWeight: FontWeight.bold),
        ),
      ),
      body: _body(),
      bottomNavigationBar: _submitButton(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _formRegualrize(),
          ],
        ),
      ),
    );
  }

  Widget _formRegualrize() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        CustomTxtField(
          onTap: () {},
          borderColor: Colors.amber,
          controller: controller.emailCtrl,
          hintText: "example@gmail.com",
          hintTextStyle: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
          fontSize: font14,
          textStyle: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Date",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        CustomTxtField(
          onTap: () {},
          borderColor: Colors.amber,

          suffix: const Icon(
            Icons.calendar_today,
            color: Colors.black87,
            size: 24.0,
          ),
          // controller: controller.dateCtrl,
          hintText: "16 June,2025",
          hintTextStyle: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
          fontSize: font12,
          textStyle: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Regularization Type",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        CustomTxtField(
          onTap: () {},
          borderColor: Colors.amber,
          suffix: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black87,
              size: 30.0,
            ),
          ),
          hintText: "Select",
          hintTextStyle: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
          fontSize: font12,
          textStyle: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Check in Time",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        CustomTxtField(
          onTap: () {},
          borderColor: Colors.amber,
          prefix: const Icon(
            Icons.watch_later_outlined,
          ),
          controller: controller.emailCtrl,
          hintText: "00:00",
          hintTextStyle: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
          fontSize: font12,
          textStyle: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Check out Time",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        CustomTxtField(
          onTap: () {},
          borderColor: Colors.amber,
          prefix: const Icon(
            Icons.watch_later_outlined,
          ),
          controller: controller.emailCtrl,
          hintText: "00:00",
          hintTextStyle: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
          fontSize: font12,
          textStyle: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Check out Time",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        CustomTxtField(
          onTap: () {},
          borderColor: Colors.amber,
          controller: controller.reasonCtrl,
          hintText: "Enter reason here",
          hintTextStyle: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
          fontSize: font12,
          textStyle: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Choose file",
          style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
        ),
        const SizedBox(
          height: 8.0,
        ),
        CustomContainerBox(
          borderColor: Colors.amber,
          borderRadius: 6.0,
          borderWidth: 0.8,
          containerColor: Colors.yellow.shade100,
          heightContainer: 60.0,
          widthContainer: 60.0,
        )
      ],
    );
  }

  Widget _submitButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomElevatedButton(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          Get.back();
        },
        fontSize: font18,
        txtColor: Colors.white,
        btnText: "Submit",
        btnSize: const Size(double.infinity, 44.0),
        primaryColor: Colors.amber.shade600,
      ),
    );
  }
}
