import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/homepage.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/data/model/catigoriesmodel.dart';
import 'package:shamil_ecommerce/linkapi.dart';

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
                categoriesModel:
                    CategoriesModel.fromJson(controller.categories[index]));
          }),
    );
  }
}

class Categories extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const Categories({super.key, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Appcolor.secondaryColor,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 5),
        height: 80,
        width: 100,
        child: SvgPicture.network(
            "${AppLink.imagecategories}/${categoriesModel.categoriesImage}",
            color: Appcolor.backGroundColor),
      ),
      Text(
        "${categoriesModel.categoriesName}",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      )
    ]);
  }
}
