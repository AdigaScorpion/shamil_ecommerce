import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/onboarding_controller.dart';
import 'package:shamil_ecommerce/data/datasource/static/static.dart';
import '../../../core/constant/color.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(children: [
        const SizedBox(height: 40),
        Text(onBoardingList[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Appcolor.black)),
        const SizedBox(height: 80),
        Image.asset(onBoardingList[i].image!,
            width: 200, height: 230, fit: BoxFit.fill),
        const SizedBox(height: 80),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            onBoardingList[i].body!,
            textAlign: TextAlign.center,
            style: const TextStyle(
                height: 2, color: Appcolor.grey, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
