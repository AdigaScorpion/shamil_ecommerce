import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/homepage.dart';
import 'package:shamil_ecommerce/core/class/handling_data_view.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/linkapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(children: [
                    Container(
                        height: 55,
                        margin: EdgeInsets.only(top: 10),
                        child: Row(children: [
                          Expanded(
                              child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search_outlined),
                              hintText: "  Search     ",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          )),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            width: 55,
                            child: IconButton(
                                alignment: Alignment.center,
                                onPressed: () {},
                                icon: Icon(Icons.notifications_active_outlined,
                                    size: 30)),
                          )
                        ])),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Stack(children: [
                          Container(
                              alignment: Alignment.center,
                              child: ListTile(
                                  title: Text("Shop Offers",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  subtitle: Text(
                                    "Offers Contents",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  )),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Appcolor.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              )),
                          Positioned(
                              top: -20,
                              right: -20,
                              child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: Appcolor.thierdColor,
                                    borderRadius: BorderRadius.circular(160)),
                              ))
                        ])),
                    Container(
                      height: 150,
                      child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 10),
                          itemCount: controller.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    color: Appcolor.secondaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.all(10),
                                height: 100,
                                width: 120,
                                child: SvgPicture.network(
                                    "${AppLink.imagecategories}/${controller.categories[index]['categories_image']}",
                                    color: Appcolor.backGroundColor),
                              ),
                              Text(
                                "${controller.categories[index]['categories_name']}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ]);
                          }),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Recomended For You  ",
                      style: TextStyle(
                          color: Appcolor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])))),
    );
  }
}
