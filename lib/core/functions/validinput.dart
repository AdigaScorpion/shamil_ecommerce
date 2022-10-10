import 'package:get/get.dart';

validinput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return '49'.tr;
  }

  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return '6'.tr;
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return '8'.tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return '46'.tr;
    }
  }

  if (val.length < min) {
    return '47$min'.tr;
  }

  if (val.length > max) {
    return '48$max'.tr;
  }
}
