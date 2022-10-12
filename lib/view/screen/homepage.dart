import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/homepage.dart';
import 'package:shamil_ecommerce/core/class/handling_data_view.dart';
import 'package:shamil_ecommerce/view/widget/home/customappbar.dart';
import 'package:shamil_ecommerce/view/widget/home/customcard.dart';
import 'package:shamil_ecommerce/view/widget/home/customtitlehome.dart';
import 'package:shamil_ecommerce/view/widget/home/listcategories.dart';
import 'package:shamil_ecommerce/view/widget/home/listitems.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(children: [
                  CustomAppBar(
                      titleappbar: "Search",
                      onPressedsearch: () {},
                      onPressednotification: () {}),
                  CustumCard(title: "Shop Offers", body: "Offers Content"),
                  CustomTitleHome(title: 'Categories'),
                  ListCategories(),
                  SizedBox(height: 10),
                  CustomTitleHome(title: 'Recomended For You'),
                  ListItems(),
                  CustomTitleHome(title: 'Brst seller'),
                  ListItems(),
                ]))));
  }
}
