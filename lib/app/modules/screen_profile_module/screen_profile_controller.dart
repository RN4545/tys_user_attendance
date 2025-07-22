import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/pojo/itemPojo.dart';

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


}
