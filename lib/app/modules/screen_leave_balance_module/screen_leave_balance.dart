import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tys_user_attendance/app/modules/screen_leave_balance_module/screen_leave_balance_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class ScreenLeaveBalance extends GetView<ScreenLeaveBalanceController> {
  const ScreenLeaveBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leave Balance",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: font18),
        ),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _leaveBalanceInfo(),
          const SizedBox(
            height: 10.0,
          ),
          _leaveReasonInfo(),
        ],
      ),
    );
  }

  Widget _leaveBalanceInfo() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              offset: Offset(1, 0),
              spreadRadius: 1)
        ],
        // border: Border.all(width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            "10",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font18, fontWeight: FontWeight.bold),
          ),
          Text(
            "LEAVE BALANCE",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font14, color: Colors.grey),
          ),
          Divider(
            thickness: 1,
            indent: 10.0,
            endIndent: 10.0,
            color: Colors.grey.shade300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "12",
                    style: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "TOTAL LEAVES",
                    style: Get.textTheme.bodyMedium!
                        .copyWith(fontSize: font12, color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "12",
                    style: Get.textTheme.bodyMedium!.copyWith(fontSize: font14),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "TOTAL LEAVES",
                    style: Get.textTheme.bodyMedium!
                        .copyWith(fontSize: font12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _leaveReasonInfo() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            offset: Offset(1, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  "Date",
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: font12,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                "Reason",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: font12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  "12.02.25",
                  style: Get.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "Have to attend a family event near Delhi, will be back on 3rd.",
                  style: Get.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: font14,
                      color: Colors.black54),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade200,
          ),

          // Second Entry
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  "05.04.25",
                  style: Get.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "Down with fever. Will resume soon.",
                  style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: font14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
