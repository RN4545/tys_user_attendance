import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tys_user_attendance/app/customWidget/attendance_calender.dart';
import 'package:tys_user_attendance/app/customWidget/customChipsMonths.dart';
import 'package:tys_user_attendance/app/modules/screen_attendance_module/screen_attendance_controller.dart';
import 'package:tys_user_attendance/app/theme/app_theme.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../customWidget/attendanceWidget.dart';
import '../../data/pojo/attendanceModel.dart';

class ScreenAttendance extends GetView<ScreenAttendanceController> {
  const ScreenAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Attendance",
            style: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font18,
            ),
          ),
          actions: [
            Obx(() => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.7, color: Colors.amber),
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: DropdownButton<String>(
                    iconSize: 14.0,
                    isDense: true,
                    borderRadius: BorderRadius.circular(16.0),
                    value: controller.selectedYear.value.isEmpty
                        ? null
                        : controller.selectedYear.value,
                    items: controller.years
                        .map(
                          (year) => DropdownMenuItem<String>(
                            value: year,
                            child: Text(
                              year,
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: font12),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (newYear) {
                      if (newYear != null) {
                        controller.selectedYear.value = newYear;
                      }
                    },
                    underline: const SizedBox(),
                  ),
                )),
            const SizedBox(width: 12),
          ],
        ),
        backgroundColor: AppColor.whiteColor,
        body: _body(),
      );
    });
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _attendance(),
            const SizedBox(
              height: 20.0,
            ),
            _attendanceCalender()
          ],
        ),
      ),
    );
  }

  Widget _attendance() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomMonthChips(
          months: controller.months,
          selectedMonth: controller.selectedMonth.value,
          onSelected: controller.selectMonth,
        ),
        const SizedBox(height: 20.0),
        Center(
          child: Text(
            "Total",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font14, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              _buildStatText("Days", "25/30"),
              const Spacer(),
              _buildStatText("Hours", "97/225"),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
              attendanceStats.map((stat) => AttendanceStatItem(stat)).toList(),
        ),
      ],
    );
  }

  Widget _buildStatText(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
        ),
        const SizedBox(width: 10.0),
        const SizedBox(
          height: 16.0,
          child: VerticalDivider(
            color: Colors.grey,
            thickness: 1.0,
          ),
        ),
        const SizedBox(width: 10.0),
        Text(
          value,
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _attendanceCalender() {
    return Column(
      children: [
        const AttendanceCalender(
          showHeader: true,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "24",
          actualDay: "Sat",
          inTime: "09:20",
          inTimeColor: Colors.green,
          outTime: "06:20",
          totalHours: "09:00",

          optionsLeave: controller.leavesOptions,
          containerBoxColor: Colors.green.shade100,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "24",
          actualDay: "Sat",
          optionsLeave: controller.leavesOptions,
          inTime: "09:20",
          inTimeColor: Colors.green,
          outTimeColor: Colors.red,
          totalHoursColor: Colors.red,
          outTime: "06:20",
          totalHours: "09:00",
          containerBoxColor: Colors.green.shade100,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "24",
          actualDay: "Sat",
          inTime: "09:20",
          inTimeColor: Colors.green,
          outTime: "06:20",
          optionsLeave: controller.leavesOptions,
          totalHours: "09:00",
          containerBoxColor: Colors.green.shade100,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "24",
          actualDay: "Sat",
          inTime: "09:20",
          outTime: "06:20",
          optionsLeave: controller.leavesOptions,
          inTimeColor: Colors.amber.shade300,
          totalHours: "09:00",
          containerBoxColor: Colors.amber.shade200,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "23",
          actualDay: "Sat",
          inTime: "09:20",
          outTime: "06:20",
          inTimeColor: Colors.amber.shade300,
          totalHours: "09:00",
          containerBoxColor: Colors.amber.shade200,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "22",
          actualDay: "Sat",
          inTime: "09:20",
          outTime: "06:20",
          inTimeColor: Colors.amber.shade300,
          totalHours: "09:00",
          containerBoxColor: Colors.amber.shade200,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "21",
          actualDay: "Sat",
          inTime: "09:20",
          outTime: "06:20",
          inTimeColor: Colors.pink.shade200,
          totalHours: "09:00",
          containerBoxColor: Colors.pink.shade100,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "21",
          actualDay: "Sat",
          inTime: "09:20",
          outTime: "06:20",
          inTimeColor: Colors.pink.shade200,
          totalHours: "09:00",
          containerBoxColor: Colors.pink.shade100,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "21",
          actualDay: "Sat",
          inTime: "09:20",
          outTime: "06:20",
          inTimeColor: Colors.pink.shade200,
          totalHours: "09:00",
          containerBoxColor: Colors.pink.shade100,
        ),
        AttendanceCalender(
          showHeader: false,
          actualDate: "21",
          actualDay: "Sat",
          inTime: "09:20",
          outTime: "06:20",
          inTimeColor: Colors.pink.shade200,
          totalHours: "09:00",
          containerBoxColor: Colors.pink.shade100,
        ),
      ],
    );
  }
}
