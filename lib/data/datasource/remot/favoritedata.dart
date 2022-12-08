import 'package:shamil_ecommerce/linkapi.dart';
import 'package:shamil_ecommerce/core/class/crud.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String userid, String itemid) async {
    var response = await crud.postData(AppLink.favoriteAdd,
        {"usersid": userid.toString(), "itemsid": itemid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String userid, String itemid) async {
    var response = await crud.postData(AppLink.favoriteDelete,
        {"usersid": userid.toString(), "itemsid": itemid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
