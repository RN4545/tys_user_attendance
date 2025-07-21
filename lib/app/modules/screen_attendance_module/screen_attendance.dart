import 'package:flutter/material.dart';
import 'package:tys_user_attendance/app/theme/app_theme.dart';
class ScreenAttendance extends StatelessWidget {
  const ScreenAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: _body(),
    );
  }
  Widget _body(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _attendance()
        ],
      ),
    );
  }
  Widget _attendance(){
    return const Column(
      children: [
         Text("Coming Soon")
      ],
    );
  }
}
