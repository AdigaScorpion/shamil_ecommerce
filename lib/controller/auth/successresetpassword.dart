import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';

abstract class SuccessResetPassword extends GetxController {
  goToLogIn();
}

class SuccessResetPasswordImp extends SuccessResetPassword {
  @override
  goToLogIn() {
    Get.offAllNamed(Approute.login);
  }
}
