import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/data/datasource/remot/forgetpassword/ResetPasswordData.dart';

abstract class ResetPassword extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetPasswordImp extends ResetPassword {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  StatusRequest? statusRequest;
  late TextEditingController password;
  late TextEditingController repassword;
  String? email;
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  resetpassword() {}

  @override
  goToSuccessResetPassword() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: "warning", middleText: "Passwords Not Match");
    }
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await resetPasswordData.postdata(email!, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success PHP") {
          Get.offNamed(Approute.successResetPassword,
              arguments: {"Email": email});
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Try Again");
          statusRequest = StatusRequest.failure;
        }
      } else {
        print(const Text("Something went wrong"));
      }
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
