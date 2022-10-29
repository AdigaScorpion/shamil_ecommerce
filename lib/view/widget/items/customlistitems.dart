import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/linkapi.dart';
import 'package:shamil_ecommerce/controller/items.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/data/model/itemsmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shamil_ecommerce/core/functions/translatedatabase.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.gotoitemsdetails(itemsModel);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                    height: 120,
                    fit: BoxFit.fill,
                    imageUrl: "${AppLink.imageitems}/${itemsModel.itemsImage}"),
                SizedBox(height: 10),
                Text(
                    "${TranslatDatabase(itemsModel.itemsNameAr, itemsModel.itemsName)}",
                    style: TextStyle(color: Appcolor.black)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(
                        5,
                        ((index) => Icon(
                              Icons.star_border_outlined,
                              size: 15,
                            )))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${itemsModel.itemsPrice} \$",
                        style: TextStyle(
                            fontSize: 14,
                            color: Appcolor.primaryColor,
                            fontFamily: "sans")),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
