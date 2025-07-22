import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customProfile.dart';
import 'package:tys_user_attendance/app/modules/screen_id_card_module/screen_id_card_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../theme/app_theme.dart';

class ScreenIdCard extends GetView<ScreenIdCardController> {
  const ScreenIdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ID Card",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: font18),
        ),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _profileFront(),
          ],
        ),
      ),
    );
  }

  Widget _profileFront() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(0.2, 0.2))
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomProfile(
              employeeName: "Jack Brown",
              employeePosition: "UI/UX Intern",
            ),
            const SizedBox(height: 20.0),
            _buildDetailRow("Employee ID", "1001"),
            _buildDetailRow("Date of Birth", "29.04.2005"),
            _buildDetailRow("Blood Group", "B+"),
            _buildDetailRow("Phone Number", "9876543210"),
            _buildDetailRow("Email", "abc@gmail.com"),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "$label",
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font14,
              color: Colors.black54
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            ":  ${value}",

            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font14,
            ),
          ),
        ),
      ],
    );
  }
}
