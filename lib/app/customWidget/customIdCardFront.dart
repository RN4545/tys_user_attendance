import 'package:flutter/material.dart';
import '../utils/AppFont.dart';
import 'customProfile.dart';
import 'package:get/get.dart';

class CustomIdCardFront extends StatelessWidget {
  final double? borderRadius;
  final Color? containerColor;
  final Color? boxShadowColor;
  final Widget? buildRowWidget;
  final String? imageString;

  const CustomIdCardFront({
    super.key,
    this.borderRadius,
    this.buildRowWidget,
    this.containerColor,
    this.boxShadowColor,
    this.imageString,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: containerColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          boxShadow: [
            BoxShadow(
              color: boxShadowColor ?? Colors.grey,
              blurRadius: 1,
              spreadRadius: 1,
              offset: const Offset(0.2, 0.2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomProfile(
              employeeName: "Jack Brown",
              employeePosition: "UI/UX Intern",
            ),
            const SizedBox(
              height: 40.0,
            ),
            _buildDetailRow("Employee Id", "1001"),
            const SizedBox(
              height: 8.0,
            ),
            _buildDetailRow("Date of Birth", "29.04.2005"),
            const SizedBox(
              height: 8.0,
            ),
            _buildDetailRow("Blood Group", "B+"),
            const SizedBox(
              height: 8.0,
            ),
            _buildDetailRow("Phone Number", "9876543210"),
            const SizedBox(
              height: 8.0,
            ),
            _buildDetailRow("Email Id", "abc@gmail.com"),
            const SizedBox(
              height: 8.0,
            ),
            _buildDetailRow("Website", "www.theyellowstraberry.com"),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              imageString ?? "",
              height: 50.0,
              width: 100.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            softWrap: true,
            "$label:",
            style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font12,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            softWrap: true,
            "${value}",
            style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font12,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
