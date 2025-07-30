import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tys_user_attendance/app/data/pojo/itemPojo.dart';
import 'package:tys_user_attendance/app/utils/AppFont.dart';

class AttendanceCalender extends StatelessWidget {
  final String? actualDate;
  final String? actualDay;
  final String? inTime;
  final String? outTime;
  final bool? showHeader;
  final String? totalHours;
  final Color? inTimeColor;
  final Color? outTimeColor;
  final Color? totalHoursColor;
  final Color? containerBoxColor;
  final List<ItemPojo>? optionsLeave; // Specify type as List<String>
  final VoidCallback? onPressed;

  const AttendanceCalender({
    super.key,
    this.actualDate,
    this.actualDay,
    this.inTime,
    this.outTime,
    this.showHeader,
    this.totalHours,
    this.inTimeColor,
    this.outTimeColor,
    this.totalHoursColor,
    this.containerBoxColor,
    this.optionsLeave,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showHeader == true) ...[
          const Divider(
            thickness: 0.7,
            color: Colors.grey,
            indent: 10.0,
            endIndent: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(fontSize: font12, color: Colors.grey),
                ),
                Text(
                  "In",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(fontSize: font12, color: Colors.grey),
                ),
                Text(
                  "Out",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(fontSize: font12, color: Colors.grey),
                ),
                Text(
                  "Total Hours",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(fontSize: font12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ] else
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    right: 12.0, left: 12.0, top: 4.0, bottom: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: containerBoxColor ?? Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Text(
                      actualDate ?? "",
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold, fontSize: font12),
                    ),
                    Text(
                      actualDay ?? "",
                      style: Get.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold, fontSize: font12),
                    ),
                  ],
                ),
              ),
              Text(
                inTime ?? "-",
                style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: font12,
                    color: inTimeColor ?? Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                outTime ?? "-",
                style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: font12,
                    color: outTimeColor ?? Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    totalHours ?? "-",
                    style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: font12,
                        color: totalHoursColor ?? Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  PopupMenuButton<ItemPojo>(
                    icon: const Icon(Icons.more_vert, color: Colors.grey),
                    onSelected: (ItemPojo selectedOption) {},
                    itemBuilder: (BuildContext context) {
                      return optionsLeave != null && optionsLeave!.isNotEmpty
                          ? optionsLeave!.map((ItemPojo option) {
                              return PopupMenuItem<ItemPojo>(
                                value: option,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          option.imageString ?? "",
                                          width: 20.0,
                                          height: 20.0,
                                        ),
                                        const SizedBox(
                                          width: 6.0,
                                        ),
                                        Text(option.title ?? ""),
                                      ],
                                    ),
                                    const Divider(
                                      thickness: 0.7,
                                      color: Colors.grey,
                                    )

                                    // Image.asset(option.imageString ?? ""),
                                  ],
                                ), // Assuming ItemPojo has a 'name' field
                              );
                            }).toList()
                          : [
                              const PopupMenuItem<ItemPojo>(
                                value: null,
                                enabled: false,
                                child: Text('No options available'),
                              ),
                            ];
                    },
                  ),
                ],
              ),
            ],
          ),
        const Divider(
          color: Colors.grey,
          thickness: 0.7,
          indent: 10.0,
          endIndent: 10.0,
        ),
      ],
    );
  }
}
