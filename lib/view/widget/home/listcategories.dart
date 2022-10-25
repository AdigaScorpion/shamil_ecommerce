import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/functions/translatedatabase.dart';
import 'package:shamil_ecommerce/linkapi.dart';
import 'package:shamil_ecommerce/controller/homepage.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/data/model/categoriesmodel.dart';

class ListCategories extends GetView<HomeControllerImp> {
  const ListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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

class Categories extends GetView<HomeControllerImp> {
  final int? i;
  final CategoriesModel categoriesModel;
  const Categories({super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItmes(
            controller.categories, i!, categoriesModel.categoriesId.toString());
      },
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: Appcolor.secondaryColor,
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 5),
          height: 60,
          width: 80,
          child: SvgPicture.network(
              "${AppLink.imagecategories}/${controller.categories[i!]['categories_image']}",
              color: Appcolor.backGroundColor),
        ),
        Text(
          "${TranslatDatabase(categoriesModel.categoriesNameAr, categoriesModel.categoriesName)}",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
