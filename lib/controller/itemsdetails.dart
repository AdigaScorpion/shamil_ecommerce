import 'package:get/get.dart';
import 'package:shamil_ecommerce/data/model/itemsmodel.dart';

abstract class ItemsDetails extends GetxController {}

class ItemsDetailsImp extends ItemsDetails {
  late ItemsModel itemsModel;

  initialData() {
    itemsModel = Get.arguments['itemsmodel'];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
