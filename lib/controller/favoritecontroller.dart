import 'package:get/get.dart';
import 'package:flutter/Material.dart';
import 'package:shamil_ecommerce/core/services/services.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/data/datasource/remot/favoritedata.dart';

class FavoriteController extends GetxController {
  FavoriteData favoriteData = FavoriteData(Get.find());
  Myservices myservices = Get.find();
  late StatusRequest statusRequest;
  Map favorite = {};
  List data = [];

  setfavorite(int id, String val) {
    favorite[id] = val;
    update();
  }

  addFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.addFavorite(
        myservices.sharedPreferences.getInt("id")!.toString(),
        itemsid.toString());
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      Get.rawSnackbar(title: "64".tr, messageText: Text("65".tr));
    } else {
      statusRequest = StatusRequest.failure;
    }
  }

  removeFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFavorite(
        myservices.sharedPreferences.getInt("id")!.toString(),
        itemsid.toString());
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      Get.rawSnackbar(title: "64".tr, messageText: Text("66".tr));
    } else {
      statusRequest = StatusRequest.failure;
    }
  }
}
