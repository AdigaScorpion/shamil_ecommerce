import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/homepage.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/core/functions/translatedatabase.dart';
import 'package:shamil_ecommerce/data/model/itemsmodel.dart';
import 'package:shamil_ecommerce/linkapi.dart';

class ListItems extends GetView<HomeControllerImp> {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Items(
              itemsModel: ItemsModel.fromJson(controller.items[index]),
            );
          }),
    );
  }
}

class Items extends StatelessWidget {
  final ItemsModel itemsModel;
  const Items({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          color: Appcolor.backColor,
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 200,
          width: 175,
          child:
              Image.network("${AppLink.imageitems}/${itemsModel.itemsImage}")),
      Positioned(
        left: 20,
        top: 10,
        child: Text(
          "${TranslatDatabase(itemsModel.categoriesNameAr, itemsModel.itemsName)}",
          style: TextStyle(fontSize: 12, color: Appcolor.black),
        ),
      ),
    ]);
  }
}
