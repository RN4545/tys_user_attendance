import 'package:flutter/material.dart';

class AttendanceStatModel {
  final double percent;
  final Color backgroundColor;
  final Color progressColor;
  final String valueText;
  final String label;

  AttendanceStatModel({
    required this.percent,
    required this.backgroundColor,
    required this.progressColor,
    required this.valueText,
    required this.label,
  });
}

final List<AttendanceStatModel> attendanceStats = [
  AttendanceStatModel(
      percent: 0.8,
      backgroundColor: Colors.green.shade100,
      progressColor: Colors.green,
      valueText: "25/30",
      label: "PRESENT"),
  AttendanceStatModel(
      percent: 0.2,
      backgroundColor: Colors.red.shade100,
      progressColor: Colors.red,
      valueText: "01/25",
      label: "ABSENT"),
  AttendanceStatModel(
      percent: 0.1,
      backgroundColor: Colors.amber.shade100,
      progressColor: Colors.amber,
      valueText: "02/25",
      label: "LATE"),
  AttendanceStatModel(
      percent: 0.0,
      backgroundColor: Colors.blue.shade100,
      progressColor: Colors.blue,
      valueText: "0/25",
      label: "LEAVE"),
  AttendanceStatModel(
      percent: 0.0,
      backgroundColor: Colors.pink.shade100,
      progressColor: Colors.pink,
      valueText: "0/25",
      label: "HALF DAY"),
];
