import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/onboarding_controller.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/view/widget/onboarding/dotController.dart';
import 'package:shamil_ecommerce/view/widget/onboarding/costumbotton.dart';
import 'package:shamil_ecommerce/view/widget/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Appcolor.backGroundColor,
      body: SafeArea(
        child: Column(children: [
          const Expanded(flex: 3, child: CustomSliderOnBoarding()),
          Expanded(
            flex: 1,
            child: Column(children: const [
              CustomDotController(),
              Spacer(flex: 2),
              CustomButtonOnBoarding(),
            ]),
          ),
        ]),
      ),
    );
  }
}
