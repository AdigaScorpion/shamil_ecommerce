import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/data/datasource/remot/items_data.dart';
import 'package:shamil_ecommerce/data/model/itemsmodel.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int val, String catval);
  getitems(String categid);
  gotoitemsdetails(ItemsModel itemsModel);
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedCat;
  String? categories_id;

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
    categories_id = Get.arguments['catid'];
    getitems(categories_id!);
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    categories_id = catval;
    getitems(catval);
    update();
  }

  @override
  getitems(categid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(categid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      update();
      return data.addAll(response['data']);
    }
    update();
  }

  @override
  gotoitemsdetails(itemsModel) {
    Get.toNamed("itemsdetails", arguments: {"itemsmodel": itemsModel});
  }
}
