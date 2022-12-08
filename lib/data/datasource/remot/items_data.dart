import 'package:shamil_ecommerce/linkapi.dart';
import 'package:shamil_ecommerce/core/class/crud.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id, String userid) async {
    var response = await crud.postData(
        AppLink.Items, {"id": id.toString(), "userid": userid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
