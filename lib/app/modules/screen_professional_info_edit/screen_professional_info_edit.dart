import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_professional_info_edit/screen_professional_info_edit_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../shared/init.dart';

class ScreenProfessionalInfoEdit
    extends GetView<ScreenProfessionalInfoEditController> {
  const ScreenProfessionalInfoEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
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
        children: [_editThings()],
      ),
    );
  }

  Widget _editThings() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Designation",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
        ),
        const SizedBox(
          height: 4.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            isDense: true,
            hintStyle: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font12, color: Colors.grey),
            hintText: "UI/UX Intern",
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.designationCtrl,
          onChanged: (value) {
            Init.instance.designationName.value = value;
          },
        ),
        const SizedBox(
          height: 26.0,
        ),
        Text(
          "Total Experience",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
        ),
        const SizedBox(
          height: 4.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            isDense: true,
            hintStyle: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font12, color: Colors.grey),
            hintText: "0 Years 0 Months",
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.totalExpCtrl,
          onChanged: (value) {
            Init.instance.totalExp.value = value;
          },
        ),
        const SizedBox(
          height: 26.0,
        ),


      ],
    );
  }
}
