import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/shared/init.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class ScreenContactInformation extends StatelessWidget {
  const ScreenContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: Get.textTheme.bodyMedium!
              .copyWith(fontSize: font18, fontWeight: FontWeight.bold),
        ),
      ),
      body: _body(),
      bottomNavigationBar: _bottomSocialIcons(),
      // bottomNavigationBar: _bottomSocialIcons(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _myAccount(),

        ],
      ),
    );
  }

  Widget _myAccount() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "My Account",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font12, color: Colors.black54),
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.yellow.shade50,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0.2, 0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                  color: Colors.grey.shade300),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/profile_icon.png",
                    width: 20.0,
                    height: 20.0,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Contact Information",
                    style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: font12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.amber,
              ),
              Text(
                "Email",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: font10, color: Colors.grey),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "jackbrown@gmail.com",
                    style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: font12, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    "assets/images/edit_icon.png",
                    height: 20.0,
                    width: 20.0,
                  )
                ],
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.amber,
              ),
              Text(
                "Phone Number",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: font10, color: Colors.grey),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+91 9876543210",
                    style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: font12, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    "assets/images/edit_icon.png",
                    height: 20.0,
                    width: 20.0,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _bottomSocialIcons() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "FOLLOW US ON",
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font14,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 24,
                width: 24,
                image: AssetImage('assets/images/instagram.png'),
              ),
              SizedBox(width: 16),
              Image(
                height: 24,
                width: 24,
                image: AssetImage('assets/images/linkedin.png'),
              ),
              SizedBox(width: 16),
              Image(
                height: 24,
                width: 24,
                image: AssetImage('assets/images/facebook.png'),
              ),
              SizedBox(width: 16),
              Image(
                height: 24,
                width: 24,
                image: AssetImage('assets/images/twitter.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
