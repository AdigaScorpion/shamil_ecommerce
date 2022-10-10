import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/services/services.dart';
import 'package:shamil_ecommerce/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  late PageController pageController;
  int currentPage = 0;
  Myservices myServeces = Get.find();

  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServeces.sharedPreferences.setString("step", "1");
      Get.offAllNamed(Approute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900),
          curve: Curves.bounceInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
