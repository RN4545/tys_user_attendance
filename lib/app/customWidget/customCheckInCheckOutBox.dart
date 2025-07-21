import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class CustomCheckInCheckOutBox extends StatelessWidget {
  const CustomCheckInCheckOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.amber),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Icon(Icons.login, color: Colors.grey, size: 30),
              const SizedBox(height: 6),
              Text(
                "00:00",
                style: Get.textTheme.bodyMedium!.copyWith(
                    color: Colors.black26, fontSize: font12),
              ),
              Text(
                "Clock In",
                style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: font12, color: Colors.black),
              ),
            ],
          ),

          Column(
            children: [
              const Icon(Icons.logout, color: Colors.grey, size: 30),
              const SizedBox(height: 6),
              Text(
                "00:00",
                style: Get.textTheme.bodyMedium!.copyWith(
                    color: Colors.black26, fontSize: font12),
              ),
              Text(
                "Check Out",
                style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: font12, color: Colors.black),
              ),
            ],
          ),

          Column(
            children: [
              const Icon(Icons.watch_later_outlined,
                  color: Colors.grey, size: 30),
              const SizedBox(height: 6.0),
              Text(
                "00:00",
                style: Get.textTheme.bodyMedium!.copyWith(
                    color: Colors.black26, fontSize: font12),
              ),
              Text(
                "Total hours",
                style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: font12, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
