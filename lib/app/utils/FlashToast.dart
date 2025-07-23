import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:photo_view/photo_view.dart';


import '../customWidget/customElevatedButton.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../utils/AppFont.dart';

class FlashToast {
  static showBottomSheet(Widget child,
      {bool? isCustomHeight = true,
        bool isDismissible = true,
        bool enableDrag = true,
        bool? isScrollControlled = true}) {
    Get.bottomSheet(
      SizedBox(
        height: isCustomHeight == true
            ? null
            : MediaQuery.of(Get.context!).size.height * 0.85,
        child: child,
      ),
      enableDrag: enableDrag,
      backgroundColor: AppColor.whiteColor,
      isScrollControlled: isScrollControlled ?? false,
      isDismissible: isDismissible,
    );
  }

  static showDialog(Widget child, ctx) {
    showGeneralDialog(
        context: ctx,
        barrierLabel: "Barrier",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: const Duration(milliseconds: 700),
        pageBuilder: (_, __, ___) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(
                  top: 30.0, bottom: 20.0, left: 20.0, right: 20.0),
              child: child,
            ),
          );
        });
  }

  static showErrorToast(String text,
      {Color? backgroundColor, Duration? duration}) {
    Future.microtask(() {
      if (Get.context != null) {
        InAppNotification.show(
            child: NotificationBody(
              minHeight: 84.0,

              text: text,
              notificationType: "errortext",
              onTap: () {
                InAppNotification.dismiss(context: Get.context!);
              },
            ),
            context: Get.context!,
            curve: Curves.ease,
            dismissCurve: Curves.ease,
            duration: const Duration(seconds: 3));
      }
    });
  }

  static showSuccessToast(String text,
      {Color? backgroundColor, Duration? duration}) {
    if (Get.context != null) {
      InAppNotification.show(
          child: NotificationBody(
            minHeight: 84.0,
            notificationType: "success",
            text: text,
            onTap: () {
              InAppNotification.dismiss(context: Get.context!);
            },
          ),
          context: Get.context!,
          curve: Curves.ease,
          dismissCurve: Curves.ease,
          duration: const Duration(seconds: 3));
    }
  }

  static showWarningToast(String text,
      {Color? backgroundColor, Duration? duration}) {
    if (Get.context != null) {
      InAppNotification.show(
          child: NotificationBody(
            minHeight: 84.0,
            notificationType: "warning",
            text: text,
            textColor: Colors.black,
            onTap: () {
              InAppNotification.dismiss(context: Get.context!);
            },
          ),
          context: Get.context!,
          curve: Curves.ease,
          dismissCurve: Curves.ease,
          duration: const Duration(seconds: 3));
    }
  }

  static showDialogImage(String imgUrl, {bool persistent = true}) {
    showDialog(
        Card(
          margin: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 14.0,
              ),
              Flexible(
                child: PhotoView.customChild(
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    // maxScale: PhotoViewComputedScale.covered * 1.0,
                    child: CachedNetworkImage(
                      imageUrl: imgUrl,
                      fit: BoxFit.fill,
                      width: Get.width,
                      imageBuilder: (ctx, img) {
                        return AspectRatio(
                          aspectRatio: 0.9,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: img, fit: BoxFit.fill)),
                          ),
                        );
                      },
                      placeholder: (ctx, str) {
                        return Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const CircularProgressIndicator(),
                        );
                      },
                      errorWidget: (ctx, str, dynam) {
                        return const CircleAvatar(
                          radius: 34.0,
                          child: Icon(Icons.image_not_supported_outlined),
                        );
                      },
                    )),
              ),
              const SizedBox(
                height: 14.0,
              ),
              const Divider(
                color: Colors.black38,
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: CustomElevatedButton(
                  btnText: "Ok",
                  btnSize: Size(Get.width, 40.0),
                  fontSize: font12,
                  // color: AppColor.whiteColor,
                  // textColor: AppColor.primaryDarkColor,
                  onTap: () {
                    Navigator.of(Get.context!, rootNavigator: true).pop();
                  },
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
            ],
          ),
        ),
        Get.context!);
  }
}

class NotificationBody extends StatelessWidget {
  final double minHeight;
  final Color? backgroundColor;
  final String text;
  final String notificationType;
  final Color? textColor;

  // final String leadingIconPath;
  final VoidCallback? onTap;

  const NotificationBody(
      {super.key,
        this.minHeight = 0.0,
        this.backgroundColor,
        this.text = "",
        required this.notificationType,
        this.onTap,
        this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.fromLTRB(12.0, 20.0, 20.0, 0.0),
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100, spreadRadius: 0.02, blurRadius: 2.0)
          ],
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
              image: AssetImage(
                notificationType == "errortext"
                    ? 'assets/images/error_bar.png'
                    : notificationType == "success"
                    ? 'assets/images/success_bar.png'
                    : notificationType == "warning"
                    ? 'assets/images/warning_bar.png'
                    : 'assets/images/info_bar.png',
              ),
              fit: BoxFit.fitWidth
          )),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        contentPadding: const EdgeInsets.all(8.0),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        tileColor: backgroundColor ?? AppColor.whiteColor,
        leading: const SizedBox(
          width: 54.0,
        ),
        title: Text(
          text.tr,
          maxLines: 2,
          softWrap: true,
          // textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          style: Get.textTheme.titleMedium!.copyWith(
            fontSize: font14,
            fontWeight: FontWeight.w600,
            color: textColor ?? Colors.black,
            shadows: <Shadow>[
              const Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 20.0,
                color: Colors.black26,
              ),
              Shadow(
                offset: const Offset(1.0, 1.0),
                blurRadius: 1.0,
                color:
                AppColor.primaryColor.shade50,
              ),
            ],
          ),
        ),
        trailing: IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.close,
              color: textColor ?? Colors.black,
              size: 30.0,
            )),
      ),

      /* ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        // contentPadding: subText.toString().trim() == ""
        //     ? EdgeInsets.all(10)
        //     : EdgeInsets.zero,
        contentPadding: const EdgeInsets.all(10.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        tileColor: backgroundColor ?? AppColor.whiteColor,
        leading: Image.asset(Assets.imagesAppLogo),
        title: Text(
        GetUtils.isNullOrBlank("${subText}") == true ? text.tr : subText.tr,
          style: Get.textTheme.titleLarge!.copyWith(
              fontSize: font16,
              fontWeight: FontWeight.w600,
              color: textColor ?? Colors.black),
        ),
        // subtitle: subText.toString().trim() == ""
        //     ? null
        //     : Text(
        //         subText.tr,
        //         style: Get.textTheme.titleMedium!.copyWith(
        //             fontSize: font14,
        //             fontWeight: FontWeight.w600,
        //             color: textColor ?? Colors.black),
        //       ),
        trailing: InkResponse(
            onTap: onTap,
            child: Icon(
              Icons.close,
              color: textColor ?? Colors.black,
              size: 30.0,
            )),
      )*/
    );
  }
}
