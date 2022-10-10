import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';

abstract class SuccessSignUp extends GetxController {
  goToLogIn();
}

class SuccessSignUpImp extends SuccessSignUp {
  @override
  goToLogIn() {
    Get.offAllNamed(Approute.login);
  }
}
