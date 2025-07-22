import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class CustomProfile extends StatelessWidget {
  final String? employeeName;
  final double size;
  final String? employeePosition;
  final String? profileImageUrl;

  const CustomProfile({
    super.key,
    this.employeeName,
    this.employeePosition,
    this.size = 100.0,
    this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey, // fallback color
          ),
          child: profileImageUrl != null && profileImageUrl!.isNotEmpty
              ? ClipOval(
                  child: Image.network(
                    profileImageUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.person, size: 40),
                  ),
                )
              : const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
        ),
        const SizedBox(height: 8),
        Text(
          employeeName ?? "No Name",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: font16,
          ),
        ),
        Text(
          employeePosition ?? "",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
