import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/homepage.dart';
import 'package:shamil_ecommerce/core/class/handling_data_view.dart';
import 'package:shamil_ecommerce/view/widget/customappbar.dart';
import 'package:shamil_ecommerce/view/widget/home/customcard.dart';
import 'package:shamil_ecommerce/view/widget/home/customtitlehome.dart';
import 'package:shamil_ecommerce/view/widget/home/listcategories.dart';
import 'package:shamil_ecommerce/view/widget/home/listitems.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListView(children: [
                  CustomAppBar(
                      titleappbar: "Search",
                      onPressedsearch: () {},
                      onPressednotification: () {}),
                  CustumCard(title: "Shop Offers", body: "Offers Content"),
                  CustomTitleHome(title: "50".tr),
                  ListCategories(),
                  SizedBox(height: 10),
                  CustomTitleHome(title: "56".tr),
                  ListItems(),
                  CustomTitleHome(title: "57".tr),
                  ListItems(),
                ]))));
  }
}
