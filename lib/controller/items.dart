import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/data/datasource/remot/items_data.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int val);
  getitems(String categoryid);
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedCat;
  int? catid;
  String? categoryid;

  ItemsData itemsData = ItemsData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    categoryid = Get.arguments['categoryid'];
    getitems(categoryid!);
  }

  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }

  @override
  getitems(categoryid) async {
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(categoryid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      update();
      return data.addAll(response['data']);
    }
    update();
  }
}
