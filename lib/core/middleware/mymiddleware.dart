import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/services/services.dart';

class MyMiddleware extends GetMiddleware {
  int? get Priority => 1;

  Myservices myservices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: Approute.homePage);
    }
    if (myservices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: Approute.login);
    }
    return null;
  }
}
