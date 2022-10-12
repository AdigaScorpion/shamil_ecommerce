import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/view/screen/homepage.dart';

abstract class HomeScreenController extends GetxController {
  changepage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listpage = [
    const HomePage(),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
          child: Text("Setting",
              style: TextStyle(fontSize: 30, color: Colors.black)))
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
          child: Text("Profile",
              style: TextStyle(fontSize: 30, color: Colors.black)))
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
          child: Text("Favorit",
              style: TextStyle(fontSize: 30, color: Colors.black)))
    ]),
  ];

  @override
  changepage(int index) {
    currentpage = index;
    update();
  }
}
