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
        backgroundColor: Appcolor.itemsbackground,
        body: Column(children: [
          Container(
              alignment: Alignment.centerRight,
              child: BackButton(
                color: Appcolor.secondaryColor,
                onPressed: () {
                  Get.back();
                },
              )),
          Container(
              height: 410,
              child: Column(children: [
                Hero(
                  tag: "${controller.itemsModel.itemsId}",
                  child: CachedNetworkImage(
                      height: 380,
                      width: 390,
                      fit: BoxFit.fill,
                      imageUrl:
                          "${AppLink.imageitems + "/" + controller.itemsModel.itemsImage!}"),
                ),
                SizedBox(height: 10),
                CustomDotList(),
                SizedBox(height: 10)
              ])),
          Container(
              height: 346,
              decoration: BoxDecoration(
                  color: Appcolor.backGroundColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Column(children: [
                SizedBox(height: 10),
                Row(children: [
                  Container(
                      alignment: Alignment.center,
                      width: 230,
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      padding: EdgeInsets.all(10),
                      // color: Colors.green[200],
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 20),
                        Text(
                            TranslatDatabase(
                                controller.itemsModel.categoriesNameAr,
                                controller.itemsModel.categoriesName),
                            style: TextStyle(
                                color: Appcolor.primaryColor, fontSize: 20)),
                        SizedBox(height: 20),
                        Text(
                            TranslatDatabase(controller.itemsModel.itemsNameAr,
                                controller.itemsModel.itemsName),
                            style: TextStyle(
                                color: Appcolor.primaryColor, fontSize: 20))
                      ])),
                  Spacer(),
                  Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      padding: EdgeInsets.all(10),
                      // color: Colors.red[200],
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("${controller.itemsModel.itemsPrice} \$",
                            style: TextStyle(
                                fontSize: 20,
                                color: Appcolor.black,
                                fontFamily: "sans",
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Row(children: [
                          ...List.generate(
                              5,
                              ((index) => Icon(
                                    Icons.star_border_outlined,
                                    size: 18,
                                  )))
                        ]),
                        IconButton(
                            alignment: Alignment.bottomCenter,
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                            ))
                      ]))
                ]),
                Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    // color: Colors.purple[200],
                    alignment: Alignment.center,
                    height: 100,
                    child: Text(
                        TranslatDatabase(controller.itemsModel.itemsNameDescAr,
                            controller.itemsModel.itemsNameDesc),
                        style: TextStyle(color: Appcolor.black, fontSize: 18))),
                SizedBox(height: 10),
                MaterialButton(
                    minWidth: 350,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    color: Appcolor.primaryColor,
                    textColor: Appcolor.backGroundColor,
                    onPressed: () {},
                    child: Text("63".tr,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
              ]))
        ]));
  }
}
