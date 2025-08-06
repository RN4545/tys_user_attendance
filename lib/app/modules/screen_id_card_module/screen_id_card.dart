import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screenshot/screenshot.dart';
import 'package:tys_user_attendance/app/customWidget/customBuildDetailRow.dart';
import 'package:tys_user_attendance/app/customWidget/customElevatedButton.dart';
import 'package:tys_user_attendance/app/customWidget/customIdCardBack.dart';
import 'package:tys_user_attendance/app/customWidget/customIdCardFront.dart';
import 'package:tys_user_attendance/app/customWidget/customProfile.dart';
import 'package:tys_user_attendance/app/modules/screen_id_card_module/screen_id_card_controller.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

import '../../theme/app_theme.dart';

class ScreenIdCard extends GetView<ScreenIdCardController> {
  const ScreenIdCard({super.key});

  @override
  Widget build(BuildContext context) {
    // final frontKey = GlobalKey();
    // final backKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ID Card",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: font18),
        ),
      ),
      body: _body(),
      bottomNavigationBar: _downloadBtns(context),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Screenshot(
          controller: controller.screenshotController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _profileFront(),
              const SizedBox(
                height: 20.0,
              ),
              _profileBack(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileFront() {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CustomIdCardFront(
          imageString: "assets/images/tys_new_logo.png",
        ),
      ],
    );
  }

  Widget _profileBack() {
    return  const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CustomIdCardBack(
          emergencyContact: "Emergency Contact:",
          contactNo: "9876543210",
          addressLabel: "Address",
          detailAddress:
              "S-58, 2'nd Floor,Haware Fantasia Business Park,Sector 30A,Vashi,Near Inorbit Mall,Navi Mumbai -400703",
          imageString: "assets/images/tys_new_logo.png",
        ),
      ],
    );
  }

  Widget _downloadBtns(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, left: 30.0),
      child: Row(
        children: [
          Expanded(
            child: CustomElevatedButton(
              iconData: const Icon(
                Icons.file_download_outlined,
                color: Colors.black,
              ),
              onTap: ()  {
               controller.captureAndSave(context);
              },
              primaryColor: Colors.amber.shade200,
              btnText: "",
              btnSize: Size(MediaQuery.of(context).size.width * 0.3, 40.0),
            ),
          ),
          const SizedBox(
            width: 50.0,
          ),
          Expanded(
            child: CustomElevatedButton(
              iconData: const Icon(
                Icons.print,
                color: Colors.black,
              ),
              onTap: () {},
              btnText: "",
              primaryColor: Colors.amber.shade200,
              btnSize: Size(MediaQuery.of(context).size.width * 0.3, 40.0),
            ),
          ),
        ],
      ),
    );
  }
}
