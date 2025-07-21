import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/modules/screen_attendance_module/screen_attendance.dart';
import 'package:tys_user_attendance/app/modules/screen_home_module/screen_home.dart';
import 'package:tys_user_attendance/app/modules/screen_resources_module/screen_resources.dart';
import 'bottom_navigation_bar_controller.dart';

class MainScreen extends StatelessWidget {
  final BottomNavigationBarController controller =
      Get.put(BottomNavigationBarController());

  final List<Widget> pages = const [
    ScreenHome(),
    ScreenAttendance(),
    ScreenResources(),
    // AttendanceScreen(),
    // UpdatesScreen(),
    // ResourcesScreen(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeTab,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedLabelStyle: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 10.0,
            ),
            selectedItemColor: null,
            unselectedItemColor: null,
            items: List.generate(
              controller.icons.length,
              (index) {
                final isSelected = controller.selectedIndex.value == index;
                return BottomNavigationBarItem(
                  icon: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.grey.shade300
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      controller.icons[index],
                      color: isSelected ? Colors.black : Colors.grey,
                      size: 20.0,
                    ),
                  ),
                  label: controller.titles[index],
                );
              },
            ),
          ),
        ));
  }
}
