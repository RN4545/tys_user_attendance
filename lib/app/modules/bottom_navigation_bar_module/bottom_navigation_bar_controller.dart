import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomNavigationBarController extends GetxController{
  var selectedIndex = 0.obs;

  void changeTab(int index){
    selectedIndex.value = index;
  }
  final List<String> titles = const [
    'Home',
    'Attendance',
    'Updates',
    'Resources',
    'Profile',
  ];

  final List<IconData> icons =  [
    Icons.home_outlined,
    Icons.calendar_today_outlined,
    Icons.notifications_none,
    Icons.folder_outlined,
    Icons.settings_outlined,
  ];
}