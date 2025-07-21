import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customTextfield.dart';
import 'package:tys_user_attendance/app/modules/screen_reimbursement_module/screen_reimbursement_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../customWidget/customTxtFiledNew.dart';
import '../../theme/app_theme.dart';

class ScreenReimbursement extends GetView<ScreenReimbursementController> {
  const ScreenReimbursement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reimbursement",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font18, fontWeight: FontWeight.bold),
        ),
      ),
      body: _body(),
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
            _form(),
          ],
        ),
      ),
    );
  }

  Widget _form() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            "Expense Category",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          controller: controller.expenseCategoryCtrl,
          hintText: "Select Category",
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
            "Vendor Name/Company",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          controller: controller.vendorNameCompanyCtrl,
          hintText: "Enter Vendor",
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
            "Date of expense",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          // controller: controller.vendorNameCompanyCtrl,
          hintText: "Enter Vendor",
          suffix: IconButton(
              onPressed: () {}, icon: const Icon(Icons.calendar_today)),
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
            "Amount",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          controller: controller.amtCtrl,
          hintText: "₹ 2000",
          prefix: Container(
            // height: 50.0,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(right: 10.0),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Text(
              "INR",
              style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font14,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
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
            "UPI ID",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          controller: controller.upiIdCtrl,
          hintText: "Enter upi id",
          hintTextStyle: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font12,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            "Comment(Optional)",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          controller: controller.commentCtrl,
          hintText: "Write Comments",
          hintTextStyle: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font12,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            "Choose file",
            style: Get.textTheme.bodyMedium!.copyWith(fontSize: font12),
          ),
        ),
        CustomTxtField(
          // controller: controller.commentCtrl,
          hintText: "",
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
}
