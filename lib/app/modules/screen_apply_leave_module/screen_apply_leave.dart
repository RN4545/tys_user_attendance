import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customTxtFiledNew.dart';
import 'package:tys_user_attendance/app/modules/screen_apply_leave_module/screen_apply_leave_controller.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../customWidget/customElevatedButton.dart';

class ScreenApplyLeave extends GetView<ScreenApplyLeaveController> {
  const ScreenApplyLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Apply Leave",
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
          _leaveDateInfo(),
          const SizedBox(
            height: 10.0,
          ),
          _typeOfLeave(),
          const SizedBox(
            height: 10.0,
          ),
          _reasonTextBox(),
        ],
      ),
    );
  }

  Widget _leaveDateInfo() {
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
                    Text("June 01",
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
                      "June 03",
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
              "3 days",
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

  Widget _typeOfLeave() {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Leave Type",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        const SizedBox(
          height: 9.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.amber),
            color: Colors.yellow.shade50,
          ),
          child: Row(
            children: [
              Expanded(
                child: Obx(
                  () => DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint: Text("Select Leave Reason",
                        style: Get.textTheme.bodyMedium!.copyWith(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    value: controller.selectedReason.value.isEmpty
                        ? null
                        : controller.selectedReason.value,
                    items: controller.leaveReasonList
                        .map(
                          (reason) => DropdownMenuItem(
                            value: reason,
                            child: Text(
                              reason,
                              style: Get.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value != null) controller.setReason(value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _reasonTextBox() {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Reason",
          style: Get.textTheme.bodyMedium!.copyWith(
            fontSize: font12,
          ),
        ),
        CustomTxtField(
          maxLines: 2,
          hintText:
              "Have to attend a family event near Delhi, will be back on 3rd.",
          hintTextStyle: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font14,),
          border: true,
          borderColor: Colors.amber,
          fillColor: Colors.yellow.shade50,
        ),
      ],
    );
  }
  Widget _submitButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomElevatedButton(
        fontSize: font16,
        onTap: () {
          Get.toNamed(RouteNames.leaveBalance);
        },
        borderRadius: BorderRadius.circular(10.0),
        btnText: "Submit",
        primaryColor: Colors.amber,
        btnSize: const Size(double.infinity, 46.0),
      ),
    );
  }

}
