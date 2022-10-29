import 'package:get/get.dart';
import 'package:flutter/Material.dart';
import 'package:shamil_ecommerce/data/model/itemsmodel.dart';

abstract class ItemsDetailsController extends GetxController {
  late PageController pageController;
  int currentImage = 0;
  next();
  onPageChanged(int index);
}

class ItemsDetailsControllerImp extends ItemsDetailsController {
  late ItemsModel itemsModel;

  initialData() {
    itemsModel = Get.arguments['itemsmodel'];
  }

  @override
  void onInit() {
    pageController = PageController();
    initialData();
    super.onInit();
  }

  @override
  next() {
    currentImage++;
    pageController.animateToPage(currentImage,
        duration: const Duration(milliseconds: 900), curve: Curves.bounceInOut);
  }

  @override
  onPageChanged(int index) {
    currentImage = index;
    update();
  }
}
