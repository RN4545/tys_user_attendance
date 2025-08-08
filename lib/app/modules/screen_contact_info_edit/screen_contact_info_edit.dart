import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/customWidget/customElevatedButton.dart';
import 'package:tys_user_attendance/app/modules/screen_contact_info_edit/screen_contact_info_edit_controller.dart';
import 'package:tys_user_attendance/app/shared/init.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../routes/route_names.dart';

class ScreenContactInfoEdit extends GetView<ScreenContactInfoEditController> {
  const ScreenContactInfoEdit({super.key});

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
      bottomNavigationBar: _submitBtn(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _editThings(),
        ],
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
          "Email",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
        ),
        TextFormField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.emailCtrl,
          onChanged: (value) {
            Init.instance.emailContact.value = value;
          },
        ),
        const SizedBox(
          height: 26.0,
        ),
        Text(
          "Phone Number",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font12, color: Colors.grey),
        ),
        TextFormField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.mobileContactCtrl,
          onChanged: (value) {
            Init.instance.mobileContact.value = value;
          },
        ),
      ],
    );
  }

  Widget _submitBtn() {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: CustomElevatedButton(
        onTap: () {
          Get.back();
        },
        btnText: "Submit",
        btnSize: const Size(double.infinity, 44.0),
        primaryColor: Colors.amber,
        txtColor: Colors.white,
        fontSize: font18,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
