import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenApplyLeaveController extends GetxController {
  var selectedReason = ''.obs;
  var leaveReasonList = [
    'Family Function',
    'Medical Emergency',
    'Sick Leave',
    'Casual Leave',
    'Vacation',
    'Maternity Leave',
    'Personal Work'
  ];

  void setReason(String value) {
    selectedReason.value = value;
  }
}
