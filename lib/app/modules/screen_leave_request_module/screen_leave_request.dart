import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customCalender.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../customWidget/customElevatedButton.dart';
import '../../routes/route_names.dart';

class ScreenLeaveRequest extends StatelessWidget {
  const ScreenLeaveRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Dates",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: font18),
        ),
      ),
      body: _body(),
      bottomNavigationBar: _submitButton(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _startDateEndDate(),
          const SizedBox(
            height: 20.0,
          ),
          _calender(),
          const SizedBox(
            height: 20.0,
          ),
          _balanceLeaves(),
          const SizedBox(
            height: 20.0,
          ),
          _checkStatistics(),
        ],
      ),
    );
  }

  Widget _startDateEndDate() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.yellow.shade50,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1.4, color: Colors.amber),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              // Start Date Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Start Date",
                        style: Get.textTheme.bodyMedium!.copyWith(
                            fontSize: font12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text("Pick a date",
                        style: Get.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: font14,
                            color: Colors.grey)),
                  ],
                ),
              ),
              // Vertical Divider
              Container(
                width: 1.4,
                height: 55,
                color: Colors.amber,
              ),
              // End Date Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("End Date",
                        style: Get.textTheme.bodyMedium!.copyWith(
                            fontSize: font12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text(
                      "Pick a date",
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: font14,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
            decoration: BoxDecoration(
              color: Colors.yellow.shade50,
              border: Border.all(
                color: Colors.amber,
              ),
            ),
            child: Text(
              "to",
              style: Get.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: font12,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _calender() {
    return CustomCalendar();
  }

  Widget _balanceLeaves() {
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

  Widget _checkStatistics() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amber,
          ),
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.yellow.shade50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Check statistics",
            style: Get.textTheme.bodyMedium!.copyWith(
                fontSize: font14,
                fontWeight: FontWeight.bold,
                color: Colors.brown),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16.0,
            ),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.arrow_forward_ios_outlined,
          //     size: 20.0,
          //   ),
          // )
        ],
      ),
    );
  }
  Widget _submitButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomElevatedButton(
        fontSize: font16,
        onTap: () {
          Get.toNamed(RouteNames.applyLeaveRequest);
        },
        borderRadius: BorderRadius.circular(10.0),
        btnText: "Submit",
        primaryColor: Colors.amber,
        btnSize: const Size(double.infinity, 46.0),
      ),
    );
  }

}
