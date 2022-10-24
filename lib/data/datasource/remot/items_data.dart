import 'package:shamil_ecommerce/core/class/crud.dart';
import 'package:shamil_ecommerce/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.Items, {id: id.toString()});

    return response.fold((l) => l, (r) => r);
  }
}
