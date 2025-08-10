import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/routes/route_names.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';
import '../../data/pojo/itemPojo.dart';
import '../../shared/init.dart';

class ScreenProfileController extends GetxController {
  var employeeDetails = <ItemPojo>[].obs;

  @override
  void onInit() {
    super.onInit();

    employeeDetails.add(
      ItemPojo(imageString: 'assets/images/id_card.png', title: "Id Card"),
    );
    employeeDetails.add(
      ItemPojo(
          imageString: 'assets/images/contact_phone.png', title: "Contact"),
    );
    employeeDetails.add(
      ItemPojo(
          imageString: 'assets/images/professional.png', title: "Professional"),
    );
    employeeDetails.add(
      ItemPojo(imageString: 'assets/images/personal.png', title: "Personal"),
    );
    employeeDetails.add(
      ItemPojo(imageString: 'assets/images/bank.png', title: "Bank"),
    );
    employeeDetails.add(
      ItemPojo(imageString: 'assets/images/family.png', title: "Family"),
    );
  }

  void routeReDirect() {
    switch (Init.instance.selectedTitle.value) {
      case "Id Card":
        Get.toNamed(RouteNames.screenIdCard);
        break;
      case "Contact":
        Get.toNamed(RouteNames.screenContactInfo);
        break;
      case "Professional":
        Get.toNamed(RouteNames.screenProfessionalInfo);
        break;
      default:
        Center(
          child: Text(
            "Routes Not Found",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: font22),
          ),
        );
    }
  }
}
