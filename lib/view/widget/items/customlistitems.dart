import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/controller/favoritecontroller.dart';
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
    FavoriteController controllerfav = Get.put(FavoriteController());
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
                Hero(
                  tag: "${itemsModel.itemsId}",
                  child: CachedNetworkImage(
                      height: 120,
                      fit: BoxFit.fill,
                      imageUrl:
                          "${AppLink.imageitems}/${itemsModel.itemsImage}"),
                ),
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
                              size: 16,
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
                    GetBuilder<FavoriteController>(
                        builder: (controller) => IconButton(
                            onPressed: () {
                              if (controller.favorite[itemsModel.itemsId] ==
                                  "1") {
                                controller.setfavorite(
                                    itemsModel.itemsId!, "0");
                                controllerfav.removeFavorite(
                                    itemsModel.itemsId.toString());
                              } else {
                                controller.setfavorite(
                                    itemsModel.itemsId!, "1");
                                controllerfav
                                    .addFavorite(itemsModel.itemsId.toString());
                              }
                            },
                            icon: Icon(
                              controller.favorite[itemsModel.itemsId] == "1"
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: Appcolor.favorite,
                            ))),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
