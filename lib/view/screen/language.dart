import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../core/constant/color.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/localization/changelocal.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 270),
        Text("1".tr, style: Theme.of(context).textTheme.headline1),
        const SizedBox(height: 40),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            width: double.infinity,
            child: MaterialButton(
              color: Appcolor.primaryColor,
              onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(Approute.onBoarding);
              },
              child: const Text("العربية",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Cairo')),
            )),
        const SizedBox(height: 3),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            width: double.infinity,
            child: MaterialButton(
              color: Appcolor.primaryColor,
              onPressed: () {
                controller.changeLang("en");
                Get.offNamed(Approute.onBoarding);
              },
              child: const Text("English",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'playfairDisplay')),
            )),
      ])
    ]));
  }
}
