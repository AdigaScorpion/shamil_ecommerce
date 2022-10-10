import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/data/datasource/remot/forgetpassword/verifycodeforgerpassworddata.dart';

abstract class VerifyCodeForgetPassword extends GetxController {
  checkcode();
  goToResetPassword(String vc);
}

class VerifyCodeForgetPasswordImp extends VerifyCodeForgetPassword {
  String? email;

  VerifyCodeForgerPasswordData verifyCodeForgetPassworddata =
      VerifyCodeForgerPasswordData(Get.find());

  StatusRequest? statusRequest;

  @override
  checkcode() {}

  @override
  goToResetPassword(vc) async {
    statusRequest = StatusRequest.loading;
    var response = await verifyCodeForgetPassworddata.postdata(email!, vc);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success PHP") {
        Get.offNamed(Approute.resetPassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "VerifyCode is not Correct");
        statusRequest = StatusRequest.failure;
      }
    } else {
      print(const Text("Something went wrong"));
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
