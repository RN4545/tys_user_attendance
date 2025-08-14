import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_personal_info_edit/screen_personal_info_edit_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../customWidget/customElevatedButton.dart';
import '../../shared/init.dart';

class ScreenPersonalInfoEdit extends GetView<ScreenPersonalInfoEditController> {
  const ScreenPersonalInfoEdit({super.key});

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
          "Date of Birth",
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
            hintText: "29.04.2002",
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.dobCtrl,
          onChanged: (value) {
            Init.instance.dobEmployee.value = value;
          },
        ),
        const SizedBox(
          height: 26.0,
        ),
        Text(
          "Gender",
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
            hintText: "Male",
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.genderCtrl,
          onChanged: (value) {
            Init.instance.genderEmployee.value = value;
          },
        ),
        // const SizedBox(
        //   height: 26.0,
        // ),
        const SizedBox(
          height: 26.0,
        ),
        Text(
          "Blood Group",
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
            hintText: "O+",
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.bloodGroupCtrl,
          onChanged: (value) {
            Init.instance.bloodGroup.value = value;
          },
        ),

        const SizedBox(
          height: 26.0,
        ),
        Text(
          "Personal Email",
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
            hintText: "jackbrown@gmail.com",
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.personalEmailCtrl,
          onChanged: (value) {
            Init.instance.personalEmail.value = value;
          },
        ),
        const SizedBox(
          height: 26.0,
        ),
        Text(
          "Address",
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
            hintText:
                "1901-Golden Society,Silver Nagar,Near Rose Park,Mulund East,400001",
            contentPadding: EdgeInsets.zero,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: controller.borderColor.value),
            ),
          ),
          controller: controller.addressCtrl,
          onChanged: (value) {
            Init.instance.addressEmployee.value = value;
          },
        ),
        const SizedBox(
          height: 26.0,
        ),
      ],
    );
  }

  Widget _submitBtn() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomElevatedButton(
        onTap: () {
          Get.back();
        },
        borderRadius: BorderRadius.circular(10.0),
        btnText: "Submit",
        fontSize: font18,
        txtColor: Colors.white,
        primaryColor: Colors.amber,
        btnSize: const Size(double.infinity, 44.0),
      ),
    );
  }
}
