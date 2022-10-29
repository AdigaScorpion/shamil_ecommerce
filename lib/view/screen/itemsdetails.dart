import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/linkapi.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/controller/itemsdetails.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shamil_ecommerce/view/widget/items/customdotslist.dart';
import 'package:shamil_ecommerce/core/functions/translatedatabase.dart';

class ItemsDetails extends GetView<ItemsDetailsControllerImp> {
  const ItemsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsDetailsControllerImp());
    return Scaffold(
        body: Column(children: [
      Container(
          height: 450,
          child: CachedNetworkImage(
              imageUrl:
                  "${AppLink.imageitems + "/" + controller.itemsModel.itemsImage!}")),
      CustomDotList(),
      SizedBox(height: 10),
      Container(
          height: 339,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              color: Appcolor.primaryColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
          child: Column(children: [
            Row(children: [
              Column(children: [
                Text(
                    TranslatDatabase(controller.itemsModel.categoriesNameAr,
                        controller.itemsModel.categoriesName),
                    style: TextStyle(
                        color: Appcolor.backGroundColor, fontSize: 20)),
                Text(
                    TranslatDatabase(controller.itemsModel.itemsNameAr,
                        controller.itemsModel.itemsName),
                    style: TextStyle(
                        color: Appcolor.backGroundColor, fontSize: 20)),
                Column(children: [
                  Text("${controller.itemsModel.itemsPrice} \$",
                      style: TextStyle(
                          fontSize: 14,
                          color: Appcolor.primaryColor,
                          fontFamily: "sans")),
                ])
              ]),
            ])
          ]))
    ]));
  }
}
