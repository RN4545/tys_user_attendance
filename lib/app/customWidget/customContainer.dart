import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class CustomContainer extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTap;

  final String? subText;
  final ImageProvider? imageIcon;
  final IconData? arrowIcon;

  const CustomContainer({
    super.key,
    this.text,
    this.color,
    this.arrowIcon,
    this.imageIcon,
    this.subText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0,4),
            )
          ],
          border: Border.all(width: 0.7, color: Colors.grey),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageIcon != null) ...[
              Image(
                image: imageIcon!,
                fit: BoxFit.cover,
                width: 20.0,
                height: 20.0,
              ),
              // Icon(icon, size: 20.0, color: Colors.brown),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (text != null)
                    Text(
                      text!,
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: font16,
                          color: color ?? Colors.black),
                    ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  if (subText != null)
                    Row(
                      children: [
                        Text(
                          subText!,
                          style: Get.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: font12,
                              color: Colors.grey),
                        ),
                        const Spacer(),
                        if (arrowIcon != null)
                          Icon(arrowIcon, size: 20, color: Colors.black45),
                      ],
                    ),
                ],
              ),
            ),
            // if (arrowIcon != null) Icon(arrowIcon, size: 20, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
