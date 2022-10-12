import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/homescreen.dart';
import 'package:shamil_ecommerce/view/widget/home/custombuttonappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: () {}, child: Icon(Icons.shopping_cart_outlined)),
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
                          textbotton: "Home",
                          icondata: Icons.home,
                          active: controller.currentpage == 0 ? true : false,
                          onPressed: () {
                            controller.changepage(0);
                          }),
                      CustomBottonAppBar(
                          textbotton: "Settings",
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
                        textbotton: "Profile",
                        icondata: Icons.person_outline,
                        active: controller.currentpage == 2 ? true : false,
                        onPressed: () {
                          controller.changepage(2);
                        },
                      ),
                      CustomBottonAppBar(
                        textbotton: "Favorite",
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
