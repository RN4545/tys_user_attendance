import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class CustomIdCardBack extends StatelessWidget {
  final double? borderRadius;
  final Color? containerColor;
  final String? imageString;
  final String? emergencyContact;
  final String? contactNo;
  final String? addressLabel;
  final String? detailAddress;

  const CustomIdCardBack(
      {super.key,
      this.borderRadius,
      this.containerColor,
      this.imageString,
      this.contactNo,
      this.addressLabel,
      this.detailAddress,
      this.emergencyContact});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: containerColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1,
            color: Colors.grey,
            blurRadius: 1,
            offset: Offset(0.2, 0.2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              imageString ?? "",
              height: 100.0,
              width: 150.0,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            emergencyContact ?? "",
            style: Get.textTheme.bodyMedium!.copyWith(
                color: Colors.black54,
                fontSize: font12,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            contactNo ?? "",
            style: Get.textTheme.bodyMedium!.copyWith(
              color: Colors.black54,
              fontSize: font12,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            addressLabel ?? "",
            style: Get.textTheme.bodyMedium!.copyWith(
                color: Colors.black54,
                fontSize: font12,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            detailAddress ?? "",
            style: Get.textTheme.bodyMedium!.copyWith(
              color: Colors.black54,
              fontSize: font12,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                "assets/images/tys_qr_img.png",
                fit: BoxFit.cover,
                width: 150.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
