import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/bindings/initialbindings.dart';
import '../../core/localization/changelocal.dart';
import '../../core/localization/translation.dart';
import '../../core/services/services.dart';
import '../../routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
