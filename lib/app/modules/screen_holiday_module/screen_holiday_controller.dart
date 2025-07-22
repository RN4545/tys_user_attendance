import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/data/pojo/itemPojo.dart';

class ScreenHolidayController extends GetxController {
  var listEvents = <ItemPojo>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    listEvents.addAll([
      ItemPojo(title: "Rakshabandhan", subTitle: "09"),
      ItemPojo(title: "Independence Day", subTitle: "15"),
      ItemPojo(title: "Ganesh Chaturthi", subTitle: "28"),
    ]);

  }
}
