import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/services/services.dart';

TranslatDatabase(columnar, columnen) {
  Myservices myservices = Get.find();
  if (myservices.sharedPreferences.getString("lang") == "ar") {
    return columnar;
  } else {
    return columnen;
  }
}
