import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/data/datasource/remot/auth/verifycodesignup.dart';

abstract class VerifyCodeSignUp extends GetxController {
  checkcode();
  goToSuccessSignUp(String vc);
}

class VerifyCodeSignUpImp extends VerifyCodeSignUp {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  StatusRequest? statusRequest;

  String? email;

  @override
  checkcode() {}

  @override
  goToSuccessSignUp(vc) async {
    statusRequest = StatusRequest.loading;
    var response = await verifyCodeSignUpData.postdata(email!, vc);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success PHP") {
        Get.offNamed(Approute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "VerifyCode is not Correct");
        statusRequest = StatusRequest.failure;
      }
    } else {
      print(Text("Something went wrong"));
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
