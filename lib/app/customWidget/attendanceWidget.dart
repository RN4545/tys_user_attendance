import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../data/pojo/attendanceModel.dart';
import '../utils/AppFont.dart';

class AttendanceStatItem extends StatelessWidget {
  final AttendanceStatModel stat;
  const AttendanceStatItem(this.stat, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 14.0,
          lineWidth: 4.0,
          percent: stat.percent,
          backgroundColor: stat.backgroundColor,
          progressColor: stat.progressColor,
        ),
        const SizedBox(height: 6.0),
        Text(
          stat.valueText,
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font14, fontWeight: FontWeight.bold),
        ),
        Text(
          stat.label,
          style: Get.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: font10,
              color: Colors.grey.shade400),
        ),
      ],
    );
  }
}
