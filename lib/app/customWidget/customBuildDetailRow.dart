import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/AppFont.dart';

class CustomBuildDetailRow extends StatelessWidget {
  final String? labelText;
  final String? labelValue;

  const CustomBuildDetailRow({super.key, this.labelValue, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            labelText ?? "",
            style: Get.textTheme.bodyMedium!
                .copyWith(fontSize: font14, color: Colors.black54),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            labelValue ?? "",
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: font14,
            ),
          ),
        ),
      ],
    );
  }
}
