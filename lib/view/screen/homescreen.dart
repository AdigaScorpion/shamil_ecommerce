import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/homescreen.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/view/widget/home/custombuttonappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
                backgroundColor: Appcolor.primaryColor,
                onPressed: () {},
                child: Icon(Icons.shopping_cart_outlined)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 5,
              child: Row(
                children: [
                  Row(
                    children: [
                      CustomBottonAppBar(
                          textbotton: "58".tr,
                          icondata: Icons.home,
                          active: controller.currentpage == 0 ? true : false,
                          onPressed: () {
                            controller.changepage(0);
                          }),
                      CustomBottonAppBar(
                          textbotton: "59".tr,
                          icondata: Icons.settings,
                          active: controller.currentpage == 1 ? true : false,
                          onPressed: () {
                            controller.changepage(1);
                          }),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomBottonAppBar(
                        textbotton: "60".tr,
                        icondata: Icons.person_outline,
                        active: controller.currentpage == 2 ? true : false,
                        onPressed: () {
                          controller.changepage(2);
                        },
                      ),
                      CustomBottonAppBar(
                        textbotton: "61".tr,
                        icondata: Icons.favorite_outline,
                        active: controller.currentpage == 3 ? true : false,
                        onPressed: () {
                          controller.changepage(3);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            body: controller.listpage.elementAt(controller.currentpage)));
  }
}
