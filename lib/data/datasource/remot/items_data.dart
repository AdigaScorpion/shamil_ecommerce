import 'package:shamil_ecommerce/core/class/crud.dart';
import 'package:shamil_ecommerce/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.Items, {});

    return response.fold((l) => l, (r) => r);
  }
}
