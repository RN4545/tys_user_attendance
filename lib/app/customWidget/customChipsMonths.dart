// widgets/custom_month_chips.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class CustomMonthChips extends StatelessWidget {
  final List<String> months;
  final Function(String selectedMonth)? onSelected;
  final String selectedMonth;

  const CustomMonthChips({
    super.key,
    required this.months,
    required this.selectedMonth,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Row(
        children: months.map(
          (month) {
            final bool isSelected = month == selectedMonth;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: ChoiceChip(
                label: Text(
                  month,
                  style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: font10,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                selected: isSelected,
                avatar: null,
                showCheckmark: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    width: 0.7,
                    color: isSelected ? Colors.amber : Colors.grey,
                  ),
                ),
                avatarBorder: Border.all(
                  color: isSelected ? Colors.amber : Colors.grey,
                ),
                onSelected: (_) => onSelected?.call(month),
                selectedColor: Colors.yellow.shade100,
                backgroundColor: Colors.white,
                labelStyle: Get.textTheme.bodyMedium!.copyWith(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
