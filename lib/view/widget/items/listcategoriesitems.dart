import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/controller/items.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/data/model/categoriesmodel.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return SizedBox(
      height: 40,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Categories(
                i: index,
                categoriesModel:
                    CategoriesModel.fromJson(controller.categories[index]));
          }),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeCat(i!);
      },
      child: Column(children: [
        GetBuilder<ItemsControllerImp>(
            builder: (controller) => Container(
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: controller.selectedCat == i
                      ? BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 3, color: Appcolor.primaryColor)),
                        )
                      : null,
                  child: Text(
                    "${categoriesModel.categoriesName}",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ))
      ]),
    );
  }
}
