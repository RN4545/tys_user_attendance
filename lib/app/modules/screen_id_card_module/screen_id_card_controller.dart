import 'dart:io';
import 'dart:typed_data';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

class ScreenIdCardController extends GetxController {
  final ScreenshotController screenshotController = ScreenshotController();

  Future<bool> requestPermission(BuildContext context) async {
    if (Platform.isAndroid) {
      try {
        DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        int sdkInt = androidInfo.version.sdkInt;

        Get.log("Android SDK version: $sdkInt");

        if (sdkInt >= 33) { // Android 13+
          var photosPermission = await Permission.photos.status;
          Get.log("Photos permission status: $photosPermission");

          if (photosPermission.isDenied) {
            photosPermission = await Permission.photos.request();
            Get.log("Photos permission after request: $photosPermission");
          }

          if (photosPermission.isGranted) {
            return true;
          } else if (photosPermission.isPermanentlyDenied) {
            // _showPermissionDialog();
            return false;
          }
        } else {
          var storagePermission = await Permission.storage.status;
          Get.log("Storage permission status: $storagePermission");

          if (storagePermission.isDenied) {
            storagePermission = await Permission.storage.request();
            Get.log("Storage permission after request: $storagePermission");
          }

          if (storagePermission.isGranted) {
            return true;
          } else if (storagePermission.isPermanentlyDenied) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Permission denied. Cannot save image.")),
            );            // _showPermissionDialog();
            return false;
          }
        }
      } catch (e) {
        Get.log("Error checking permissions: $e");
        return false;
      }
    } else if (Platform.isIOS) {
      var photosPermission = await Permission.photos.status;
      if (photosPermission.isDenied) {
        photosPermission = await Permission.photos.request();
      }
      return photosPermission.isGranted;
    }

    return false;
  }


  Future<void> captureAndSave(BuildContext context) async {
    try {
      bool hasPermission = await requestPermission(context);

      if (!hasPermission) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Permission denied. Cannot save image.")),
        );
        return;
      }

      Uint8List? imageBytes = await screenshotController.capture();

      if (imageBytes != null) {
        final result = await ImageGallerySaver.saveImage(
          imageBytes,
          name: "widget_capture_${DateTime.now().millisecondsSinceEpoch}",
          quality: 100,
        );

        Get.log("Image saved: $result");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Screenshot saved to gallery.")),
        );
      } else {
        Get.log("Capture failed");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Failed to capture image.")),
        );
      }
    } catch (e) {
      Get.log("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error saving image: $e")),
      );
    }
  }
}
