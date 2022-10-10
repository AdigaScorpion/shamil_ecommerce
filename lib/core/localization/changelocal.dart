import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/constant/themedata.dart';
import 'package:shamil_ecommerce/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  Myservices myservices = Get.find();

  ThemeData appTheme = arabicTheme;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myservices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? arabicTheme : englishTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myservices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = arabicTheme;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = englishTheme;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
