import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/controller/itemsdetails.dart';

class CustomDotList extends StatelessWidget {
  const CustomDotList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsDetailsControllerImp>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  controller.itemsModel.itemsImage!.length,
                  (index) => AnimatedContainer(
                      margin: const EdgeInsets.only(right: 5),
                      duration: const Duration(milliseconds: 500),
                      width: controller.currentImage == index ? 16 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                          color: Appcolor.backGroundColor,
                          borderRadius: BorderRadius.circular(10))))
            ]));
  }
}
