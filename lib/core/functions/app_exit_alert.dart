import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> appexitalert() {
  Get.defaultDialog(title: '51'.tr, middleText: '52'.tr, actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text('53'.tr)),
    ElevatedButton(
      onPressed: () {
        Get.back();
      },
      child: Text('54'.tr),
    )
  ]);
  return Future.value(true);
}
