import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/linkapi.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/controller/itemsdetails.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsDetailsImp controller = Get.put(ItemsDetailsImp());
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Appcolor.primaryColor,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)))),
              CachedNetworkImage(
                  imageUrl: AppLink.imageitems +
                      "/" +
                      controller.itemsModel.itemsImage!)
            ],
          )
        ],
      )),
    );
  }
}
