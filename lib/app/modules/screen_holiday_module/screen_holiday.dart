import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customGridViewContainer.dart';
import 'package:tys_user_attendance/app/modules/screen_holiday_module/screen_holiday_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class ScreenHoliday extends GetView<ScreenHolidayController> {
  const ScreenHoliday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List of Holidays",
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            _listHoliday(),
          ],
        ),
      ),
    );
  }

  Widget _listHoliday() {
    return Column(
      children: [
        CustomGridViewContainer(
          text: "August 2025",
          items: [
            ItemPojo(subTitle: "Rakshabandhan", title: "15"),
            ItemPojo(subTitle: "Independence Day", title: "15"),
            ItemPojo(subTitle: "Ganesh Chaturthi", title: "07"),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        CustomGridViewContainer(
          text: "August 2025",
          items: [
            ItemPojo(subTitle: "Rakshabandhan", title: "15"),
            ItemPojo(subTitle: "Independence Day", title: "15"),
            ItemPojo(subTitle: "Ganesh Chaturthi", title: "07"),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        CustomGridViewContainer(
          text: "August 2025",
          items: [
            ItemPojo(subTitle: "Rakshabandhan", title: "15"),
            ItemPojo(subTitle: "Independence Day", title: "15"),
            ItemPojo(subTitle: "Ganesh Chaturthi", title: "07"),
          ],
        ),
      ],
    );
  }
}
