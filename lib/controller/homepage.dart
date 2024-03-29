import 'package:get/get.dart';
import 'package:shamil_ecommerce/data/home_data.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/data/model/itemsmodel.dart';
import 'package:shamil_ecommerce/core/services/services.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToItmes(List categories, int selectedCat, String categoryid);
  gotoitemsdetails(ItemsModel itemsModel);
}

class HomeControllerImp extends HomeController {
  Myservices myservices = Get.find();
  HomeData homeData = HomeData(Get.find());
  late StatusRequest statusRequest;
  List categories = [];
  List items = [];
  String? username;
  int? id;
  String? lang;

  initialData() {
    username = myservices.sharedPreferences.getString("username");
    id = myservices.sharedPreferences.getInt("id");
    lang = myservices.sharedPreferences.getString("lang");
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success PHP") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      }
      update();
    }
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  goToItmes(categories, selectedCat, categoryid) {
    Get.toNamed(Approute.items, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid,
    });
  }

  @override
  gotoitemsdetails(itemsModel) {
    Get.toNamed("itemsdetails", arguments: {"itemsmodel": itemsModel});
  }
}
