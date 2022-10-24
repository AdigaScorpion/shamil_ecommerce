import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

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
