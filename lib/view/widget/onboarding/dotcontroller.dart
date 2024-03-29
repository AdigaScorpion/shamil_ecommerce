import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/data/datasource/static/static.dart';
import 'package:shamil_ecommerce/controller/onboarding_controller.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                      margin: const EdgeInsets.only(right: 5),
                      duration: const Duration(milliseconds: 500),
                      width: controller.currentPage == index ? 16 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                          color: Appcolor.primaryColor,
                          borderRadius: BorderRadius.circular(10))))
            ]));
  }
}
